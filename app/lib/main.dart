import 'package:app/src/core/app.dart';
import 'package:app/src/core/utils/localization.dart';
import 'package:app/src/core/provider/startup.dart';
import 'package:app/src/core/utils/log.dart';
import 'package:app/src/presentation/intro/app_startup_mange.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    TranslationProvider(
      child: ProviderScope(
        observers: [
          TalkerRiverpodObserver(
            talker: logger,
            settings: const TalkerRiverpodLoggerSettings(
              printStateFullData: false,
              printFailFullData: false,
              // printProviderUpdated: false,
            ),
          ),
        ],
        child: AppStartupMangeWidget(startupProvider, (_) => const MyApp()),
      ),
    ),
  );
}
