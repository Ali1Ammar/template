import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/src/core/provider/shared_preferences.dart';

final startupProvider = FutureProvider((ref) async {
  ref.onDispose(() {
    // ensure we invalidate all the providers we depend on
    ref.invalidate(sharedPreferenceProvider);
  });

  // all asynchronous app initialization code should belong here:
  await ref.watch(sharedPreferenceProvider.future);
});
