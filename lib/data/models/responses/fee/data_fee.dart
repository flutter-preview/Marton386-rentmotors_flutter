import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_fee.freezed.dart';
part 'data_fee.g.dart';

@freezed
class DataFee with _$DataFee {
  const factory DataFee({
    required String code,
    required double cost,
    required String description,
  }) = _DataFee;

  factory DataFee.fromJson(Map<String, dynamic> json) => _$DataFeeFromJson(json);
}