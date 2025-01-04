import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_startup_animation.dart';
import 'intro_page.dart';

class AppStartupMangeWidget extends HookConsumerWidget {
  final FutureProvider startupProvider;
  final WidgetBuilder builder;
  const AppStartupMangeWidget(this.startupProvider, this.builder, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCompleteSplash = useState(false);
    final appStartupState = ref.watch(startupProvider);
    void onCompleteSplash() {
      isCompleteSplash.value = true;
    }

    return AppStartupWidgetAnimation(
      onData: builder,
      onError: (context) => TextButton(
        child: const Text('retry'),
        onPressed: () => ref.invalidate(startupProvider),
      ),
      onLoading: (context) => IntroPage(
        onCompleteAnimation: onCompleteSplash,
      ),
      state: !isCompleteSplash.value
          ? AppStartupState.loading
          : appStartupState.map(
              data: (_) => AppStartupState.data,
              error: (_) => AppStartupState.error,
              loading: (_) => AppStartupState.loading,
            ),
    );
  }
}
