import 'package:design/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().sharedCopyWith().copyWith(
      extensions: [AppCustomTheme(background: Colors.white)],
    );
  }
}

extension _ThemeDataHelper on ThemeData {
  ThemeData sharedCopyWith() {
    return copyWith().copyWithTextTheme();
  }

  ThemeData copyWithTextTheme() {
    const arFont = '';
    const fallback = [''];
    final typography = Typography.material2021(colorScheme: colorScheme);
    return copyWith(
      textTheme: textTheme.apply(
        fontFamily: arFont,
        fontFamilyFallback: fallback,
      ),
      typography: typography.copyWith(
        black: typography.black.apply(
          fontFamily: arFont,
          fontFamilyFallback: fallback,
        ),
        white: typography.white.apply(
          fontFamily: arFont,
          fontFamilyFallback: fallback,
        ),
        englishLike: typography.englishLike.apply(
          fontFamily: arFont,
          fontFamilyFallback: fallback,
        ),
        dense: typography.dense.apply(
          fontFamily: arFont,
          fontFamilyFallback: fallback,
        ),
        tall: typography.tall.apply(
          fontFamily: arFont,
          fontFamilyFallback: fallback,
        ),
      ),
    );
  }
}
