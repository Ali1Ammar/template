// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginateResponse<T> _$PaginateResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginateResponse<T>(
      (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginateResponseToJson<T>(
  PaginateResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
    };
