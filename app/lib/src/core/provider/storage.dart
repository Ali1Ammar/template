import 'package:app/src/data/local/local_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferenceProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

final localStorageProvider = Provider<LocalStorageService>((ref) =>
    LocalStorageService(
        sharedPreferences: ref.read(sharedPreferenceProvider).requireValue));
