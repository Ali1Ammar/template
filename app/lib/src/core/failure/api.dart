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
  translate(Translations localizations) {
    return localizations.validator.unknownError;
  }
}

class ConnectionFailure implements ApiFailure {
  ConnectionFailure();

  @override
  translate(Translations localizations) {
    return localizations.validator.connectionError;
  }
}

class InvalidCredentialFailure implements ApiFailure {
  const InvalidCredentialFailure();

  @override
  translate(Translations localizations) {
    return localizations.validator.invalidCredentials;
  }
}

class TakenEmailFailure implements ApiFailure {
  const TakenEmailFailure();

  @override
  translate(Translations localizations) {
    return localizations.validator.usedEmail;
  }
}

class FailedRefreshTokenFailure implements ApiFailure {
  const FailedRefreshTokenFailure();

  @override
  translate(Translations localizations) {
    return localizations.validator.invalidCredentials;
  }
}

//TODO(init): this must be change based on the app backend and used inside error inspector
class KnownApiFailure implements ApiFailure {
  final int? errorCode;
  final String? type;
  final String? service;
  final String? requestId;
  final List? details;
  final String? title;
  const KnownApiFailure(this.errorCode, this.type, this.service, this.requestId,
      this.details, this.title);

  @override
  translate(Translations localizations) {
    return title ?? localizations.validator.unknownError;
  }
}
