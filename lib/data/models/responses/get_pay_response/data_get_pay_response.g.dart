// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_get_pay_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataGetPayResponse _$$_DataGetPayResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataGetPayResponse(
      order_id: json['order_id'] as int,
      payment_url: json['payment_url'] as String,
      error_code: json['error_code'] as int,
    );

Map<String, dynamic> _$$_DataGetPayResponseToJson(
        _$_DataGetPayResponse instance) =>
    <String, dynamic>{
      'order_id': instance.order_id,
      'payment_url': instance.payment_url,
      'error_code': instance.error_code,
    };
