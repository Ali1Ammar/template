import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:app/widgetbook_helper.dart';
import 'package:widgetbook_workspace/addon/wrapper.dart';
// This file does not exist yet,
// it will be generated in the next step
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'light', data: AppTheme.lightTheme()),
          ],
        ),
        TextScaleAddon(),
        InspectorAddon(enabled: true),
        DeviceFrameAddon(
          devices: [
            ...Devices.ios.all,
            ...Devices.android.all,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
        WrapperAddon(
          initialAlignment: Alignment.center,
        )
      ],
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      directories: directories,
    );
  }
}
