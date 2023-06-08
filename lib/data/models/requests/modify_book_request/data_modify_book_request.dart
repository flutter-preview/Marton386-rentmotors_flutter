import '../booking_request/data_booking_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../responses/reservation_response/data_reservation_response.dart';
part 'data_modify_book_request.freezed.dart';
part 'data_modify_book_request.g.dart';

@freezed
class DataModifyBookRequest with _$DataModifyBookRequest {
  const factory DataModifyBookRequest({
    // ignore: non_constant_identifier_names
    required String res_id,
    // ignore: non_constant_identifier_names
    required String car_id,
    // ignore: non_constant_identifier_names
    required ClientInfo client_info,
    // ignore: non_constant_identifier_names
    required String flight_number,
    required List<OrderExtra> extras,
    required String comments,
  }) = _DataModifyBookRequest;

  factory DataModifyBookRequest.fromJson(Map<String, dynamic> json) => _$DataModifyBookRequestFromJson(json);
}