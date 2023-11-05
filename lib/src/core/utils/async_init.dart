import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/src/core/provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final asyncInitProvider = Provider<AsyncInit>((ref) => AsyncInit(ref: ref));

// we use this to await(at main.dart) any global needed config value like path provider, device into, package info and other and then provide this value to the app using provider override
class AsyncInit {
  final Ref ref;
  late final SharedPreferences sharedPreferences;

  AsyncInit({required this.ref});

  Future<void> init() async {
    final env = ref.read(envConfig);

    await Future.wait([
      SharedPreferences.getInstance().then((value) {
        sharedPreferences = value;
      }),
    ]);
  }

  complete() {}
}
