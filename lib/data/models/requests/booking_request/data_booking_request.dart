import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_booking_request.freezed.dart';
part 'data_booking_request.g.dart';

@freezed
class DataBookingRequest with _$DataBookingRequest {
  const factory DataBookingRequest({
    // ignore: non_constant_identifier_names
    required String car_id,
    // ignore: non_constant_identifier_names
    required Client client_info,
    // ignore: non_constant_identifier_names
    Passport? passport_info,
    // ignore: non_constant_identifier_names
    DriverLicense? dl_info,
    required List<OrderExtra> extras,
    // ignore: non_constant_identifier_names
    required List<PlatformData> extra_data,
    // ignore: non_constant_identifier_names
    required String flight_number,
    required String comments,
    // ignore: non_constant_identifier_names
    required int new_client,
  }) = _DataBookingRequest;

  factory DataBookingRequest.fromJson(Map<String, dynamic> json) => _$DataBookingRequestFromJson(json);
}

@freezed
class PlatformData with _$PlatformData {
  const factory PlatformData({
    required String data,
    required int length,
    required bool required,
    required String title,
    required String type,
  }) = _PlatformData;

  factory PlatformData.fromJson(Map<String, dynamic> json) => _$PlatformDataFromJson(json);
}

@freezed
class Client with _$Client {
  const factory Client({
    // ignore: non_constant_identifier_names
    required String first_name,
    // ignore: non_constant_identifier_names
    required String last_name,
    String? patronomic,
    String? phone,
    required String email,
    String? country,
    String? address,
    String? birthday,
    // ignore: non_constant_identifier_names
    int? client_id,
  }) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}

@freezed
class DriverLicense with _$DriverLicense {
  const factory DriverLicense({
    String? number,
    // ignore: non_constant_identifier_names
    String? issue_date
  }) = _DriverLicense;

  factory DriverLicense.fromJson(Map<String, dynamic> json) => _$DriverLicenseFromJson(json);
}

@freezed
class Passport with _$Passport {
  const factory Passport({
    String? number,
    String? country,
    String? issue,
    // ignore: non_constant_identifier_names
    String? issue_date
  }) = _Passport;

  factory Passport.fromJson(Map<String, dynamic> json) => _$PassportFromJson(json);
}

@freezed
class OrderExtra with _$OrderExtra {
  const factory OrderExtra({
    // ignore: non_constant_identifier_names
    required String extras_short_code,
    required int quantity,
    required String adr
  }) = _OrderExtra;

  factory OrderExtra.fromJson(Map<String, dynamic> json) => _$OrderExtraFromJson(json);
}