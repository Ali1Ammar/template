import 'package:app/src/core/provider/config.dart';
import 'package:app/src/core/utils/log.dart';
import 'package:dio/dio.dart';

import 'package:riverpod/riverpod.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

final dioClient = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: ref.read(configProvider).baseUrl,
  ));

  // dio.interceptors.add(TokenInterceptors(dio, () {
  //   return getToken(ref);
  // }, () {
  //   return forceLogout(ref);
  // }));
  dio.interceptors.add(TalkerDioLogger(
    talker: logger,
    settings: TalkerDioLoggerSettings(
        printErrorData: true,
        printRequestHeaders: true,
        printErrorHeaders: true,
        printErrorMessage: true),
  ));
  return dio;
});

Future<String?> getToken(Ref ref) async {
  return null;
}

Future<void> forceLogout(Ref ref) async {}
