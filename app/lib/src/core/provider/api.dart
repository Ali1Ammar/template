import 'package:app/src/core/provider/dio.dart';
import 'package:app/src/data/api/auth_client_service.dart';
import 'package:riverpod/riverpod.dart';

final apiServiceProvider = Provider((ref) {
  final dio = ref.read(dioClient);
  return (authService: AuthClientService(client: dio));
});
