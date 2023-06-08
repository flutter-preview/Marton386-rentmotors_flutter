// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_reservation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataReservationResponse _$$_DataReservationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DataReservationResponse(
      res_id: json['res_id'] as String,
      client_info:
          ClientInfo.fromJson(json['client_info'] as Map<String, dynamic>),
      dl_info: DlInfo.fromJson(json['dl_info'] as Map<String, dynamic>),
      passport_info:
          PassportInfo.fromJson(json['passport_info'] as Map<String, dynamic>),
      flight_number: json['flight_number'] as String,
      payment_info:
          PaymentInfo.fromJson(json['payment_info'] as Map<String, dynamic>),
      comment: json['comment'] as String,
      lng: json['lng'] as String,
      booking_date: json['booking_date'] as String,
      details: Details.fromJson(json['details'] as Map<String, dynamic>),
      supplier_res_id: json['supplier_res_id'] as String,
      status: json['status'] as int,
    );

Map<String, dynamic> _$$_DataReservationResponseToJson(
        _$_DataReservationResponse instance) =>
    <String, dynamic>{
      'res_id': instance.res_id,
      'client_info': instance.client_info,
      'dl_info': instance.dl_info,
      'passport_info': instance.passport_info,
      'flight_number': instance.flight_number,
      'payment_info': instance.payment_info,
      'comment': instance.comment,
      'lng': instance.lng,
      'booking_date': instance.booking_date,
      'details': instance.details,
      'supplier_res_id': instance.supplier_res_id,
      'status': instance.status,
    };

_$_ClientInfo _$$_ClientInfoFromJson(Map<String, dynamic> json) =>
    _$_ClientInfo(
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      patronymic: json['patronymic'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String,
      post_code: json['post_code'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$$_ClientInfoToJson(_$_ClientInfo instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'patronymic': instance.patronymic,
      'phone': instance.phone,
      'email': instance.email,
      'post_code': instance.post_code,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'birthday': instance.birthday,
    };

_$_DlInfo _$$_DlInfoFromJson(Map<String, dynamic> json) => _$_DlInfo(
      number: json['number'] as String?,
      country: json['country'] as String?,
      expiration_date: json['expiration_date'] as String?,
      issue_date: json['issue_date'] as String?,
    );

Map<String, dynamic> _$$_DlInfoToJson(_$_DlInfo instance) => <String, dynamic>{
      'number': instance.number,
      'country': instance.country,
      'expiration_date': instance.expiration_date,
      'issue_date': instance.issue_date,
    };

_$_PassportInfo _$$_PassportInfoFromJson(Map<String, dynamic> json) =>
    _$_PassportInfo(
      number: json['number'] as String,
      country: json['country'] as String,
      expiration_date: json['expiration_date'] as String,
      issue_date: json['issue_date'] as String,
      issue: json['issue'] as String,
      birth_place: json['birth_place'] as String?,
    );

Map<String, dynamic> _$$_PassportInfoToJson(_$_PassportInfo instance) =>
    <String, dynamic>{
      'number': instance.number,
      'country': instance.country,
      'expiration_date': instance.expiration_date,
      'issue_date': instance.issue_date,
      'issue': instance.issue,
      'birth_place': instance.birth_place,
    };

_$_PaymentInfo _$$_PaymentInfoFromJson(Map<String, dynamic> json) =>
    _$_PaymentInfo(
      card_number: json['card_number'] as String,
      card_holder: json['card_holder'] as String,
      card_expiration: json['card_expiration'] as String,
      card_type: json['card_type'] as String,
      cvv: json['cvv'] as int,
    );

Map<String, dynamic> _$$_PaymentInfoToJson(_$_PaymentInfo instance) =>
    <String, dynamic>{
      'card_number': instance.card_number,
      'card_holder': instance.card_holder,
      'card_expiration': instance.card_expiration,
      'card_type': instance.card_type,
      'cvv': instance.cvv,
    };

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      pickup: DataStation.fromJson(json['pickup'] as Map<String, dynamic>),
      dropoff: DataStation.fromJson(json['dropoff'] as Map<String, dynamic>),
      car: DataCar.fromJson(json['car'] as Map<String, dynamic>),
      currency: DataCurrency.fromJson(json['currency'] as Map<String, dynamic>),
      pickup_date: json['pickup_date'] as String,
      dropoff_date: json['dropoff_date'] as String,
      days: json['days'] as int,
      p: json['p'] == null
          ? null
          : PromoRes.fromJson(json['p'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'pickup': instance.pickup,
      'dropoff': instance.dropoff,
      'car': instance.car,
      'currency': instance.currency,
      'pickup_date': instance.pickup_date,
      'dropoff_date': instance.dropoff_date,
      'days': instance.days,
      'p': instance.p,
    };

_$_PromoRes _$$_PromoResFromJson(Map<String, dynamic> json) => _$_PromoRes(
      codeval: json['codeval'] as String,
      titleval: json['titleval'] as String,
      descriptionval: json['descriptionval'] as String,
      typeval: json['typeval'] as int?,
      valueval: json['valueval'] as int?,
      sale_typeval: json['sale_typeval'] as String?,
      sale_valueval: json['sale_valueval'] as String?,
    );

Map<String, dynamic> _$$_PromoResToJson(_$_PromoRes instance) =>
    <String, dynamic>{
      'codeval': instance.codeval,
      'titleval': instance.titleval,
      'descriptionval': instance.descriptionval,
      'typeval': instance.typeval,
      'valueval': instance.valueval,
      'sale_typeval': instance.sale_typeval,
      'sale_valueval': instance.sale_valueval,
    };
