import 'package:app/widgetbook_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'default',
  type: AppLogoWidget,
)
Widget useCaseAppLogoWidget(BuildContext context) {
  return AppLogoWidget();
}
