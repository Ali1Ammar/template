import 'package:dio/dio.dart';
import 'package:starter/src/core/failure/base.dart';

extension OnDioException on DioException {
  BaseFailure toFailure() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
      case DioExceptionType.badResponse:
        return ConnectionFailure();
    }
  }
}

extension OnRequestOptions on RequestOptions {
  Future<Response<T>> retry<T>(Dio dio) async {
    final options = Options(
      method: method,
      headers: headers,
    );
    return dio.request<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}

// this function is used to handle any api call error and record unknown error
// it is better to handle any known error and convert it into failure here before passing it to the next layer
// if either customDioException or customException result is null then the error will be recorded as unknown error
Future<T> apiGuard<T>(
  Future<T> Function() apiCall, {
  ApiFailure? Function(DioException error)? customDioException,
  BaseFailure? Function(Object error)? customException,
}) async {
  try {
    return await apiCall();
  } on DioException catch (e) {
    final failure = customDioException?.call(e);
    if (failure != null) {
      throw failure;
    }

    throw e.toFailure();
  } catch (e) {
    final failure = customException?.call(e);
    if (failure != null) {
      throw failure;
    }
    if (e is BaseFailure) rethrow;
    throw UnknownFailure(e);
  }
}
