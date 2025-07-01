import 'package:dio/dio.dart';

extension OptionExtension on Options {
  void disableToken() {
    extra ??= {};
    extra!['disable-token'] = true;
  }

  void setRefreshToken() {
    extra ??= {};
    extra!['refresh-token'] = true;
  }
}

extension RequestOptionExtension on RequestOptions {
  bool get isDisableToken => extra['disable-token'] == true;
  bool get isRefreshToken => extra['refresh-token'] == true;
}
