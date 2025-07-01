import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'custom_theme.tailor.dart';

@TailorMixin()
class AppCustomTheme extends ThemeExtension<AppCustomTheme>
    with _$AppCustomThemeTailorMixin {
  /// You can use required / named / optional parameters in the constructor
  // const AppCustomTheme(this.background);
  // const AppCustomTheme([this.background = Colors.blue])
  const AppCustomTheme({required this.background});
  @override
  final Color background;
}
