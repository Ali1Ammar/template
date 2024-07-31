import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter/src/core/app.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
    observers: [TalkerRiverpodObserver()],
    child: const AppStartupWidget(),
  ));
}
