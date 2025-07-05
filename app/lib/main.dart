import 'package:app/localization/strings.g.dart';
import 'package:app/src/core/app.dart';
import 'package:app/src/core/provider/startup.dart';
import 'package:app/src/presentation/intro/app_startup_mange.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    TranslationProvider(
      child: ProviderScope(
        observers: [],
        child: AppStartupMangeWidget(startupProvider, (_) => const MyApp()),
      ),
    ),
  );
}
