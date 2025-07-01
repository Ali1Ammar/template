import 'package:app/src/core/failure/base.dart';
import 'package:app/src/core/utils/localization.dart';
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
}

class ConnectionFailure implements ApiFailure {
  ConnectionFailure();

  @override
  String translate(Translations localizations) {
    return localizations.failure.network;
  }
}
