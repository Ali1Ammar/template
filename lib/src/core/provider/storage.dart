import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/src/core/provider/shared_preferences.dart';
import 'package:starter/src/infrastructure/service/local_storage_service.dart';

final localStorageProvider = Provider<LocalStorageService>((ref) =>
    LocalStorageService(
        sharedPreferences: ref.read(sharedPreferenceProvider).requireValue));
