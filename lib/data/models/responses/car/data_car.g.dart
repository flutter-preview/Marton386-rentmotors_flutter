// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataCar _$$_DataCarFromJson(Map<String, dynamic> json) => _$_DataCar(
      car_id: json['car_id'] as String,
      car_info: CarInfo.fromJson(json['car_info'] as Map<String, dynamic>),
      on_request: json['on_request'] as bool,
      fees: (json['fees'] as List<dynamic>)
          .map((e) => DataFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      extras: (json['extras'] as List<dynamic>)
          .map((e) => DataExtra.fromJson(e as Map<String, dynamic>))
          .toList(),
      net_rate: (json['net_rate'] as num).toDouble(),
      included_features: (json['included_features'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mileage: json['mileage'] as int,
      promo: json['promo'] == null
          ? null
          : Promo.fromJson(json['promo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataCarToJson(_$_DataCar instance) =>
    <String, dynamic>{
      'car_id': instance.car_id,
      'car_info': instance.car_info,
      'on_request': instance.on_request,
      'fees': instance.fees,
      'extras': instance.extras,
      'net_rate': instance.net_rate,
      'included_features': instance.included_features,
      'mileage': instance.mileage,
      'promo': instance.promo,
    };

_$_CarInfo _$$_CarInfoFromJson(Map<String, dynamic> json) => _$_CarInfo(
      code: json['code'] as String,
      at: json['at'] as int,
      ac: json['ac'] as int,
      seats: json['seats'] as int,
      doors: json['doors'] as int,
      bag_small: json['bag_small'] as int,
      bag_big: json['bag_big'] as int,
      car_name: json['car_name'] as String,
      car_url_transparent: json['car_url_transparent'] as String,
      deposit: (json['deposit'] as num).toDouble(),
      ev: json['ev'] as int,
    );

Map<String, dynamic> _$$_CarInfoToJson(_$_CarInfo instance) =>
    <String, dynamic>{
      'code': instance.code,
      'at': instance.at,
      'ac': instance.ac,
      'seats': instance.seats,
      'doors': instance.doors,
      'bag_small': instance.bag_small,
      'bag_big': instance.bag_big,
      'car_name': instance.car_name,
      'car_url_transparent': instance.car_url_transparent,
      'deposit': instance.deposit,
      'ev': instance.ev,
    };

_$_Promo _$$_PromoFromJson(Map<String, dynamic> json) => _$_Promo(
      code: json['code'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as int?,
      value: json['value'] as int?,
      sale_type: json['sale_type'] as String?,
      sale_value: json['sale_value'] as String?,
    );

Map<String, dynamic> _$$_PromoToJson(_$_Promo instance) => <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'value': instance.value,
      'sale_type': instance.sale_type,
      'sale_value': instance.sale_value,
    };
