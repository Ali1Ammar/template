import 'package:app/localization/strings.g.dart';

abstract class BaseFailure {
  BaseFailure();

  String translate(Translations localizations);
}

sealed class LogicFailure implements BaseFailure {
  LogicFailure();

  @override
  String translate(Translations localizations);
}

class UnknownFailure implements BaseFailure {
  final Object error;
  UnknownFailure(this.error);

  @override
  String translate(Translations localizations) {
    return localizations.failure.unknown;
  }
}
