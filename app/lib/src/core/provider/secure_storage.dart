import 'package:app/src/data/local/secure_storage_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final secureStorageServiceProvider = Provider(
    (ref) => SecureStorageService(secureStorage: const FlutterSecureStorage()));
