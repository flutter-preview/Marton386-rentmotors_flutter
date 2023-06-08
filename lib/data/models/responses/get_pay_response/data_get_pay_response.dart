import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_get_pay_response.freezed.dart';
part 'data_get_pay_response.g.dart';

@freezed
class DataGetPayResponse with _$DataGetPayResponse {
  const factory DataGetPayResponse({
    // ignore: non_constant_identifier_names
    required int order_id,
    // ignore: non_constant_identifier_names
    required String payment_url,
    // ignore: non_constant_identifier_names
    required int error_code,
  }) = _DataGetPayResponse;

  factory DataGetPayResponse.fromJson(Map<String, dynamic> json) => _$DataGetPayResponseFromJson(json);
}