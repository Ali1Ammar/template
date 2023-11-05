import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/src/core/utils/async_init.dart';
import 'package:starter/src/infrastructure/service/local_storage_service.dart';

final localStorageProvider = Provider<LocalStorageService>((ref) =>
    LocalStorageService(
        sharedPreferences: ref.read(asyncInitProvider).sharedPreferences));
