// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_modify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModify _$$_DataModifyFromJson(Map<String, dynamic> json) =>
    _$_DataModify(
      res_id: json['res_id'] as String,
      supplier_res_id: json['supplier_res_id'] as int,
      version: json['version'] as int,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_DataModifyToJson(_$_DataModify instance) =>
    <String, dynamic>{
      'res_id': instance.res_id,
      'supplier_res_id': instance.supplier_res_id,
      'version': instance.version,
      'status': instance.status,
    };
