import 'package:app/localization/strings.g.dart';
import 'package:app/src/core/failure/base.dart';
import 'package:dio/dio.dart';

sealed class ApiFailure implements BaseFailure {
  ApiFailure();
}

class DioFailure implements ApiFailure {
  final DioException error;

  DioFailure(this.error);

  @override
  String translate(Translations localizations) {
    return localizations.failure.network;
  }

  @override
  String toString() {
    return 'DioFailure($error)';
  }
}

class ConnectionFailure implements ApiFailure {
  ConnectionFailure();

  @override
  String translate(Translations localizations) {
    return localizations.failure.network;
  }

  @override
  String toString() {
    return 'ConnectionFailure()';
  }
}
