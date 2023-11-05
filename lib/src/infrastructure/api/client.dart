import 'package:dio/dio.dart';
import 'package:starter/src/infrastructure/api/auth_client.dart';

// in this file (may be split to multi file if needed) we will define the api endpoint call
// each function should be a single api call start with get, create, update, delete,query, etc...
// each function should return a response dto or a list of response dto
// each function should take a dto as it is body or query
// any paginated data should use PaginateResponse<T> and PaginateQuery
// it is better to handle any known error and convert it into failure here before passing it to the next layer using apiGuard helper function
class ApiClient {
  final Dio dio;
  final AuthClient authClient;
  ApiClient({required this.dio, required this.authClient});
}
