import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:starter/localization/localization.dart';
import 'package:starter/src/core/design/theme/app_theme.dart';
import 'package:starter/src/core/provider/startup.dart';
import 'package:starter/src/core/route.dart';
import 'package:starter/src/presentation/intro/app_startup_widget.dart';
import 'package:starter/src/presentation/intro/intro_page.dart';

class AppStartupWidget extends HookConsumerWidget {
  const AppStartupWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCompleteSplash = useState(false);
    final appStartupState = ref.watch(startupProvider);
    void onCompleteSplash() {
      isCompleteSplash.value = true;
    }

    return AppStartupWidgetAnimation(
      onData: (context) => const MyApp(),
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

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final appRouter = ref.watch(appRouterProvider);
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',
        //route
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,
        routerConfig: appRouter.config(),
        //theme
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        //localizations
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
      );
    });
  }
}
