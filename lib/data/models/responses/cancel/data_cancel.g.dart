// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_cancel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataCancel _$$_DataCancelFromJson(Map<String, dynamic> json) =>
    _$_DataCancel(
      res_id: json['res_id'] as String,
      supplier_res_id: json['supplier_res_id'] as String,
      status: json['status'] as int,
      cancelation_fee: json['cancelation_fee'] as int,
    );

Map<String, dynamic> _$$_DataCancelToJson(_$_DataCancel instance) =>
    <String, dynamic>{
      'res_id': instance.res_id,
      'supplier_res_id': instance.supplier_res_id,
      'status': instance.status,
      'cancelation_fee': instance.cancelation_fee,
    };
