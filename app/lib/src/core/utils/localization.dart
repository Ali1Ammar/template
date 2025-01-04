import 'package:app/localization/strings.g.dart';
import 'package:flutter/widgets.dart';

export 'package:app/localization/strings.g.dart';

extension LocalizationExtension on BuildContext {
  Translations get translator => TranslationProvider.of(this).translations;
}
