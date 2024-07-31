import 'package:dio/dio.dart';
import 'package:starter/src/core/provider/config.dart';
import 'package:starter/src/core/utils/log/log.dart';
import 'package:starter/src/infrastructure/api/interceptor.dart';
import 'package:riverpod/riverpod.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

final dioClient = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: ref.read(configProvider).baseUrl,
  ));

  dio.interceptors.add(DioInterceptors(dio));
  dio.interceptors.add(TalkerDioLogger(
    talker: logger,
  ));
  return dio;
});
