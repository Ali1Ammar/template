import 'package:json_annotation/json_annotation.dart';

part "paginate_response.g.dart";

@JsonSerializable(genericArgumentFactories: true)
class PaginateResponse<T> {
  final List<T> data;
  PaginateResponse(this.data);

  factory PaginateResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginateResponseFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PaginateResponseToJson(this, toJsonT);
}
