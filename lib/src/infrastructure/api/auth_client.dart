import 'package:dio/dio.dart';
import 'package:starter/src/core/failure/base.dart';
import 'package:starter/src/infrastructure/api/helper/helper.dart';
import 'package:starter/src/infrastructure/dto/dto.dart';

class AuthClient {
  final Dio dio;

  AuthClient({required this.dio});

  Future<Null> login(LoginRequest data) async {
    return apiGuard(
      () async {
        await dio.post(
          '/api/login',
          data: data.toJson(),
        );
        return null;
      },
      customDioException: (e) {
        if (e.response?.statusCode == 401) {
          return const InvalidCredentialFailure();
        }
        return null;
      },
    );
  }
}
