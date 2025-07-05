import 'package:app/src/data/local/local_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app/src/data/local/secure_storage_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final sharedPreferenceProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

final localStorageProvider = Provider<LocalStorageService>(
  (ref) => LocalStorageService(
    sharedPreferences: ref.read(sharedPreferenceProvider).requireValue,
  ),
);

final secureStorageServiceProvider = Provider(
  (ref) => SecureStorageService(secureStorage: const FlutterSecureStorage()),
);
