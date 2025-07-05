import 'package:app/src/core/provider/dio.dart';
import 'package:app/src/data/api/auth_client.dart';
import 'package:riverpod/riverpod.dart';

final apiServiceProvider = Provider((ref) {
  final dio = ref.read(dioClient);
  return (authClient: AuthClient(dio));
});
