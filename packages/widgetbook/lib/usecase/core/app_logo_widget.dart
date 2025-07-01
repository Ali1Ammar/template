import 'package:flutter/widgets.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:design/design.dart';

@widgetbook.UseCase(
  name: 'default',
  type: AppLogoWidget,
)
Widget useCaseAppLogoWidget(BuildContext context) {
  return AppLogoWidget();
}
