import 'package:flutter/material.dart';

extension OnContext on BuildContext {
  bool get isTablet => MediaQuery.sizeOf(this).aspectRatio > 1;
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
}
