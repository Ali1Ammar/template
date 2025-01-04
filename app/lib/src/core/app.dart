import 'package:auto_route/auto_route.dart';
import 'package:app/src/core/utils/localization.dart';
import 'package:app/src/core/route.dart';
import 'package:app/src/core/utils/log.dart';
import 'package:app/src/design/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final appRouter = ref.watch(appRouterProvider);
      // final loggedInController = ref.watch(loggedInProvider);

      return MaterialApp.router(
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        restorationScopeId: 'app',

        onGenerateTitle: (BuildContext context) => context.translator.appName,
        //route
        routerConfig: appRouter.config(
            // reevaluateListenable: loggedInController,
            navigatorObservers: () => [TalkerRouteObserver(logger)],
            deepLinkBuilder: (f) async {
              return const DeepLink([]);
            }),
        //theme
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme(),
        //localizations
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('ar'),
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
      );
    });
  }
}
