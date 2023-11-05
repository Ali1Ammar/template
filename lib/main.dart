import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/src/core/app.dart';
import 'package:starter/src/core/utils/async_init.dart';
import 'package:starter/src/core/utils/log/riverpod_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final providerContainer = ProviderContainer();
  await providerContainer.read(asyncInitProvider).init();
  runApp(ProviderScope(
    parent: providerContainer,
    observers: [RiverpodLogger()],
    child: const MyApp(),
  ));
}
