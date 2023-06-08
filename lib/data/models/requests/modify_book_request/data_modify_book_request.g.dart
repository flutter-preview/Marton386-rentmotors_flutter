// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_modify_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataModifyBookRequest _$$_DataModifyBookRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DataModifyBookRequest(
      res_id: json['res_id'] as String,
      car_id: json['car_id'] as String,
      client_info:
          ClientInfo.fromJson(json['client_info'] as Map<String, dynamic>),
      flight_number: json['flight_number'] as String,
      extras: (json['extras'] as List<dynamic>)
          .map((e) => OrderExtra.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: json['comments'] as String,
    );

Map<String, dynamic> _$$_DataModifyBookRequestToJson(
        _$_DataModifyBookRequest instance) =>
    <String, dynamic>{
      'res_id': instance.res_id,
      'car_id': instance.car_id,
      'client_info': instance.client_info,
      'flight_number': instance.flight_number,
      'extras': instance.extras,
      'comments': instance.comments,
    };
