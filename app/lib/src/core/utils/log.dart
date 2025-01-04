import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

final logger = Talker(
  settings: TalkerSettings(
    maxHistoryItems: 100,
  ),
  logger: TalkerLogger(
    settings: TalkerLoggerSettings(maxLineWidth: 60),
    formatter: const ColoredLoggerFormatter(),
    output: (message) {
      defaultTargetPlatform == TargetPlatform.android
          ? message.split('\n').forEach(debugPrint)
          : log(message, name: 'Talker');
    },
  ),
);
