part of "base.dart";

sealed class ApiFailure implements BaseFailure {
  ApiFailure();
}

class DioFailure implements ApiFailure {
  final DioException error;

  DioFailure(this.error);

  @override
  translate(AppLocalizations localizations) {
    return localizations.unknownError;
  }
}

class ConnectionFailure implements ApiFailure {
  ConnectionFailure();

  @override
  translate(AppLocalizations localizations) {
    return localizations.unknownError;
  }
}

class InvalidCredentialFailure implements ApiFailure {
  const InvalidCredentialFailure();

  @override
  translate(AppLocalizations localizations) {
    return localizations.invalidCredentials;
  }
}
