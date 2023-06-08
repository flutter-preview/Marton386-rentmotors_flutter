// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_fee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataFee _$$_DataFeeFromJson(Map<String, dynamic> json) => _$_DataFee(
      code: json['code'] as String,
      cost: (json['cost'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_DataFeeToJson(_$_DataFee instance) =>
    <String, dynamic>{
      'code': instance.code,
      'cost': instance.cost,
      'description': instance.description,
    };
