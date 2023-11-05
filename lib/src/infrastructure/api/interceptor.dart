import 'package:dio/dio.dart';

class DioInterceptors extends Interceptor {
  final Dio dio;

  DioInterceptors(this.dio);
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    handler.next(err);
  }
}
