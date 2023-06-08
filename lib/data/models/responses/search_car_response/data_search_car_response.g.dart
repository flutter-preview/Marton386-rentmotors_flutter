// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_search_car_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataSearchCarResponse _$$_DataSearchCarResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataSearchCarResponse(
      cars: (json['cars'] as List<dynamic>)
          .map((e) => DataCar.fromJson(e as Map<String, dynamic>))
          .toList(),
      days: json['days'] as int,
      currency: DataCurrency.fromJson(json['currency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataSearchCarResponseToJson(
        _$_DataSearchCarResponse instance) =>
    <String, dynamic>{
      'cars': instance.cars,
      'days': instance.days,
      'currency': instance.currency,
    };
