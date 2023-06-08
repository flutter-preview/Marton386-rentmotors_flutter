import '../booking_request/data_booking_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_booking_org_request.freezed.dart';
part 'data_booking_org_request.g.dart';

@freezed
class DataBookingOrgRequest with _$DataBookingOrgRequest {
  const factory DataBookingOrgRequest({
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
    required String flight_number,
    required String comments,
    // ignore: non_constant_identifier_names
    required int new_client,
    // ignore: non_constant_identifier_names
    required EntityInfo entity_info
  }) = _DataBookingOrgRequest;

  factory DataBookingOrgRequest.fromJson(Map<String, dynamic> json) => _$DataBookingOrgRequestFromJson(json);
}

@freezed
class EntityInfo with _$EntityInfo {
  const factory EntityInfo({
    // ignore: non_constant_identifier_names
    required String full_title,
    // ignore: non_constant_identifier_names
    String? short_title,
    String? tin,
    required String psrn,
    String? iec,
    required String phone,
    required String email,
    // ignore: non_constant_identifier_names
    required String manager_name,
    // ignore: non_constant_identifier_names
    required String manager_post,
    // ignore: non_constant_identifier_names
    required String legal_address,
    // ignore: non_constant_identifier_names
    required String postal_address
  }) = _EntityInfo;

  factory EntityInfo.fromJson(Map<String, dynamic> json) => _$EntityInfoFromJson(json);
}