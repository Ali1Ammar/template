import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:starter/src/core/failure/base.dart';
import 'package:starter/src/infrastructure/dto/response/paginate_response.dart';

extension OnDioException on DioException {
  ApiFailure toFailure() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
      case DioExceptionType.cancel:
      case DioExceptionType.connectionError:
        return ConnectionFailure();
      case DioExceptionType.badResponse:
        return DioFailure(this);
    }
  }
}

extension OnRequestOptions on RequestOptions {
  Future<Response<T>> retry<T>(Dio dio) async {
    final options = Options(
      method: method,
      headers: headers,
    );
    return dio.request<T>(path,
        data: data, queryParameters: queryParameters, options: options);
  }
}

typedef PaginatedResponseT<T> = ResponseT<PaginateResponse<T>>;

typedef ResponseT<T> = Future<Either<BaseFailure, T>>;

// this function is used to handle any api call error and record unknown error
// it is better to handle any known error and convert it into failure here before passing it to the next layer
// if either customDioException or customException result is null then the error will be recorded as unknown error
ResponseT<T> apiGuard<T>(Future<T> Function() apiCall,
    {ApiFailure? Function(DioException error)? customDioException,
    BaseFailure? Function(Object error)? customException}) async {
  try {
    return Right(await apiCall());
  } on DioException catch (e) {
    final failure = customDioException?.call(e);
    if (failure != null) {
      return Left(failure);
    }
    return Left(e.toFailure());
  } catch (e) {
    final failure = customException?.call(e);
    if (failure != null) {
      return Left(failure);
    }
    return Left(UnknownFailure(e));
  }
}
