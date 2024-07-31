import 'dart:io';

import 'package:talker_flutter/talker_flutter.dart';

final logger = TalkerFlutter.init(
  settings: TalkerSettings(
    maxHistoryItems: 100,
  ),
  logger: TalkerLogger(
    settings: TalkerLoggerSettings(maxLineWidth: 60),
    formatter: const ColoredLoggerFormatter(),
    output: (message) {
      message.split('\n').forEach((v) => stdout.writeln(v));
    },
  ),
);
