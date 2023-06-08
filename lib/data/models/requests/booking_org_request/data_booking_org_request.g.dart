// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_booking_org_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataBookingOrgRequest _$$_DataBookingOrgRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DataBookingOrgRequest(
      car_id: json['car_id'] as String,
      client_info: Client.fromJson(json['client_info'] as Map<String, dynamic>),
      passport_info: json['passport_info'] == null
          ? null
          : Passport.fromJson(json['passport_info'] as Map<String, dynamic>),
      dl_info: json['dl_info'] == null
          ? null
          : DriverLicense.fromJson(json['dl_info'] as Map<String, dynamic>),
      extras: (json['extras'] as List<dynamic>)
          .map((e) => OrderExtra.fromJson(e as Map<String, dynamic>))
          .toList(),
      flight_number: json['flight_number'] as String,
      comments: json['comments'] as String,
      new_client: json['new_client'] as int,
      entity_info:
          EntityInfo.fromJson(json['entity_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataBookingOrgRequestToJson(
        _$_DataBookingOrgRequest instance) =>
    <String, dynamic>{
      'car_id': instance.car_id,
      'client_info': instance.client_info,
      'passport_info': instance.passport_info,
      'dl_info': instance.dl_info,
      'extras': instance.extras,
      'flight_number': instance.flight_number,
      'comments': instance.comments,
      'new_client': instance.new_client,
      'entity_info': instance.entity_info,
    };

_$_EntityInfo _$$_EntityInfoFromJson(Map<String, dynamic> json) =>
    _$_EntityInfo(
      full_title: json['full_title'] as String,
      short_title: json['short_title'] as String?,
      tin: json['tin'] as String?,
      psrn: json['psrn'] as String,
      iec: json['iec'] as String?,
      phone: json['phone'] as String,
      email: json['email'] as String,
      manager_name: json['manager_name'] as String,
      manager_post: json['manager_post'] as String,
      legal_address: json['legal_address'] as String,
      postal_address: json['postal_address'] as String,
    );

Map<String, dynamic> _$$_EntityInfoToJson(_$_EntityInfo instance) =>
    <String, dynamic>{
      'full_title': instance.full_title,
      'short_title': instance.short_title,
      'tin': instance.tin,
      'psrn': instance.psrn,
      'iec': instance.iec,
      'phone': instance.phone,
      'email': instance.email,
      'manager_name': instance.manager_name,
      'manager_post': instance.manager_post,
      'legal_address': instance.legal_address,
      'postal_address': instance.postal_address,
    };
