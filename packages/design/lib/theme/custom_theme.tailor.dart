// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppCustomThemeTailorMixin on ThemeExtension<AppCustomTheme> {
  Color get background;

  @override
  AppCustomTheme copyWith({Color? background}) {
    return AppCustomTheme(background: background ?? this.background);
  }

  @override
  AppCustomTheme lerp(
    covariant ThemeExtension<AppCustomTheme>? other,
    double t,
  ) {
    if (other is! AppCustomTheme) return this as AppCustomTheme;
    return AppCustomTheme(
      background: Color.lerp(background, other.background, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppCustomTheme &&
            const DeepCollectionEquality().equals(
              background,
              other.background,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
    );
  }
}

extension AppCustomThemeBuildContextProps on BuildContext {
  AppCustomTheme get appCustomTheme =>
      Theme.of(this).extension<AppCustomTheme>()!;
  Color get background => appCustomTheme.background;
}
