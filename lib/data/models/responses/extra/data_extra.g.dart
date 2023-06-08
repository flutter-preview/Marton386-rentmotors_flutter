// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataExtra _$$_DataExtraFromJson(Map<String, dynamic> json) => _$_DataExtra(
      title: json['title'] as String,
      description: json['description'] as String,
      max_count: json['max_count'] as int,
      per_what: json['per_what'] as int,
      short_code: json['short_code'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int?,
      adr: json['adr'] as String?,
    );

Map<String, dynamic> _$$_DataExtraToJson(_$_DataExtra instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'max_count': instance.max_count,
      'per_what': instance.per_what,
      'short_code': instance.short_code,
      'price': instance.price,
      'quantity': instance.quantity,
      'adr': instance.adr,
    };
