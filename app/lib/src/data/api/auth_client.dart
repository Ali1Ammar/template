import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  // @POST('/login')
  // Future<void> login(@Body() LoginRequest request);
}
