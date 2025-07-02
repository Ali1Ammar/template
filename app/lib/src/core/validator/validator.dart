import 'package:app/localization/strings.g.dart';
import 'package:app/src/core/failure/base.dart';

abstract class ValidatorFailure<T> implements BaseFailure {
  const ValidatorFailure();

  @override
  String translate(Translations localizations);

  bool validateExpression(T value);

  BaseFailure? validate(T value) {
    if (mergeList.any((element) => element.validate(value) != null)) {
      return this;
    }
    if (validateExpression(value)) {
      return null;
    }
    return this;
  }

  List<ValidatorFailure<T>> get mergeList => [];

  String? Function(T) uiValidate(Translations localizations) {
    return (value) {
      final failure = validate(value);
      return failure?.translate(localizations);
    };
  }
}
