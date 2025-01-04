import 'package:app/src/core/provider/storage.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final startupProvider = FutureProvider((ref) async {
  ref.onDispose(() {
    // ensure we invalidate all the providers we depend on
    ref.invalidate(sharedPreferenceProvider);
  });
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // all asynchronous app initialization code should belong here:
  await ref.watch(sharedPreferenceProvider.future);
});
