import '../car/data_car.dart';
import '../station/data_station.dart';
import '../currency/data_currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_reservation_response.freezed.dart';
part 'data_reservation_response.g.dart';

@freezed
class DataReservationResponse with _$DataReservationResponse {
  const factory DataReservationResponse({
    // ignore: non_constant_identifier_names
    required String res_id,
    // ignore: non_constant_identifier_names
    required ClientInfo client_info,
    // ignore: non_constant_identifier_names
    required DlInfo dl_info,
    // ignore: non_constant_identifier_names
    required PassportInfo passport_info,
    // ignore: non_constant_identifier_names
    required String flight_number,
    // ignore: non_constant_identifier_names
    required PaymentInfo payment_info,
    required String comment,
    required String lng,
    // ignore: non_constant_identifier_names
    required String booking_date,
    required Details details,
    // ignore: non_constant_identifier_names
    required String supplier_res_id,
    required int status,
  }) = _DataReservationResponse;

  factory DataReservationResponse.fromJson(Map<String, dynamic> json) => _$DataReservationResponseFromJson(json);
}

@freezed
class ClientInfo with _$ClientInfo {
  const factory ClientInfo({
    // ignore: non_constant_identifier_names
    required String first_name,
    // ignore: non_constant_identifier_names
    required String last_name,
    String? patronymic,
    String? phone,
    required String email,
    // ignore: non_constant_identifier_names
    String? post_code,
    String? country,
    String? city,
    String? address,
    String? birthday,
  }) = _ClientInfo;

  factory ClientInfo.fromJson(Map<String, dynamic> json) => _$ClientInfoFromJson(json);
}

@freezed
class DlInfo with _$DlInfo {
  const factory DlInfo({
    String? number,
    String? country,
    // ignore: non_constant_identifier_names
    String? expiration_date,
    // ignore: non_constant_identifier_names
    String? issue_date,
  }) = _DlInfo;

  factory DlInfo.fromJson(Map<String, dynamic> json) => _$DlInfoFromJson(json);
}

@freezed
class PassportInfo with _$PassportInfo {
  const factory PassportInfo({
    required String number,
    required String country,
    // ignore: non_constant_identifier_names
    required String expiration_date,
    // ignore: non_constant_identifier_names
    required String issue_date,
    required String issue,
    // ignore: non_constant_identifier_names
    String? birth_place,
  }) = _PassportInfo;

  factory PassportInfo.fromJson(Map<String, dynamic> json) => _$PassportInfoFromJson(json);
}

@freezed
class PaymentInfo with _$PaymentInfo {
  const factory PaymentInfo({
    // ignore: non_constant_identifier_names
    required String card_number,
    // ignore: non_constant_identifier_names
    required String card_holder,
    // ignore: non_constant_identifier_names
    required String card_expiration,
    // ignore: non_constant_identifier_names
    required String card_type,
    required int cvv,
  }) = _PaymentInfo;

  factory PaymentInfo.fromJson(Map<String, dynamic> json) => _$PaymentInfoFromJson(json);
}

@freezed
class Details with _$Details {
  const factory Details({
    required DataStation pickup,
    required DataStation dropoff,
    required DataCar car,
    required DataCurrency currency,
    // ignore: non_constant_identifier_names
    required String pickup_date,
    // ignore: non_constant_identifier_names
    required String dropoff_date,
    required int days,
    PromoRes? p,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);
}

@freezed
class PromoRes with _$PromoRes {
  const factory PromoRes({
    required String codeval,
    required String titleval,
    required String descriptionval,
    int? typeval,
    int? valueval,
    // ignore: non_constant_identifier_names
    String? sale_typeval,
    // ignore: non_constant_identifier_names
    String? sale_valueval,
  }) = _PromoRes;

  factory PromoRes.fromJson(Map<String, dynamic> json) => _$PromoResFromJson(json);
}