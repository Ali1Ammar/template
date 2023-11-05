import 'package:json_annotation/json_annotation.dart';

part "paginate_query.g.dart";

@JsonSerializable()
class PaginateQuery {
  PaginateQuery();

  factory PaginateQuery.fromJson(Map<String, dynamic> json) =>
      _$PaginateQueryFromJson(json);
  Map<String, dynamic> toJson() => _$PaginateQueryToJson(this);
}
