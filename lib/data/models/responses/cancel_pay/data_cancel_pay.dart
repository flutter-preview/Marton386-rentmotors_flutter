import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_cancel_pay.freezed.dart';
part 'data_cancel_pay.g.dart';

@freezed
class DataCancelPay with _$DataCancelPay {
  const factory DataCancelPay({
    required bool success,
  }) = _DataCancelPay;

  factory DataCancelPay.fromJson(Map<String, dynamic> json) => _$DataCancelPayFromJson(json);
}