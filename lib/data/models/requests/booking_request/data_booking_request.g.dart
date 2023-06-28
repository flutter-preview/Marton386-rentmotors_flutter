// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataBookingRequest _$$_DataBookingRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DataBookingRequest(
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
      extra_data: (json['extra_data'] as List<dynamic>)
          .map((e) => PlatformData.fromJson(e as Map<String, dynamic>))
          .toList(),
      flight_number: json['flight_number'] as String,
      comments: json['comments'] as String,
      new_client: json['new_client'] as int,
    );

Map<String, dynamic> _$$_DataBookingRequestToJson(
        _$_DataBookingRequest instance) =>
    <String, dynamic>{
      'car_id': instance.car_id,
      'client_info': instance.client_info,
      'passport_info': instance.passport_info,
      'dl_info': instance.dl_info,
      'extras': instance.extras,
      'extra_data': instance.extra_data,
      'flight_number': instance.flight_number,
      'comments': instance.comments,
      'new_client': instance.new_client,
    };

_$_PlatformData _$$_PlatformDataFromJson(Map<String, dynamic> json) =>
    _$_PlatformData(
      data: json['data'] as String,
      length: json['length'] as int,
      required: json['required'] as bool,
      title: json['title'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_PlatformDataToJson(_$_PlatformData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'length': instance.length,
      'required': instance.required,
      'title': instance.title,
      'type': instance.type,
    };

_$_Client _$$_ClientFromJson(Map<String, dynamic> json) => _$_Client(
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      patronomic: json['patronomic'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String,
      country: json['country'] as String?,
      address: json['address'] as String?,
      birthday: json['birthday'] as String?,
      client_id: json['client_id'] as int?,
    );

Map<String, dynamic> _$$_ClientToJson(_$_Client instance) => <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'patronomic': instance.patronomic,
      'phone': instance.phone,
      'email': instance.email,
      'country': instance.country,
      'address': instance.address,
      'birthday': instance.birthday,
      'client_id': instance.client_id,
    };

_$_DriverLicense _$$_DriverLicenseFromJson(Map<String, dynamic> json) =>
    _$_DriverLicense(
      number: json['number'] as String?,
      issue_date: json['issue_date'] as String?,
    );

Map<String, dynamic> _$$_DriverLicenseToJson(_$_DriverLicense instance) =>
    <String, dynamic>{
      'number': instance.number,
      'issue_date': instance.issue_date,
    };

_$_Passport _$$_PassportFromJson(Map<String, dynamic> json) => _$_Passport(
      number: json['number'] as String?,
      country: json['country'] as String?,
      issue: json['issue'] as String?,
      issue_date: json['issue_date'] as String?,
    );

Map<String, dynamic> _$$_PassportToJson(_$_Passport instance) =>
    <String, dynamic>{
      'number': instance.number,
      'country': instance.country,
      'issue': instance.issue,
      'issue_date': instance.issue_date,
    };

_$_OrderExtra _$$_OrderExtraFromJson(Map<String, dynamic> json) =>
    _$_OrderExtra(
      extras_short_code: json['extras_short_code'] as String,
      quantity: json['quantity'] as int,
      adr: json['adr'] as String,
    );

Map<String, dynamic> _$$_OrderExtraToJson(_$_OrderExtra instance) =>
    <String, dynamic>{
      'extras_short_code': instance.extras_short_code,
      'quantity': instance.quantity,
      'adr': instance.adr,
    };
