import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage secureStorage;

  /// only used for local secure storage for sensitive data like token and password
  SecureStorageService({required this.secureStorage});

  Future<void> clear() {
    return secureStorage.deleteAll();
  }
}
