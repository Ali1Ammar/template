import 'package:dio/dio.dart';
import 'package:starter/src/core/provider/config.dart';
import 'package:starter/src/infrastructure/api/interceptor.dart';
import 'package:riverpod/riverpod.dart';

final dioClient = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: ref.read(envConfig).baseUrl,
  ));

  dio.interceptors.add(DioInterceptors(dio));
  return dio;
});
