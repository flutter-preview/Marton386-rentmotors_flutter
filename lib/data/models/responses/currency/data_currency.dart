import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_currency.freezed.dart';
part 'data_currency.g.dart';

@freezed
class DataCurrency with _$DataCurrency {
  const factory DataCurrency({
    required int id,
    required String title,
    // ignore: non_constant_identifier_names
    required String short_title,
    // ignore: non_constant_identifier_names
    required String short_code,
  }) = _DataCurrency;

  factory DataCurrency.fromJson(Map<String, dynamic> json) => _$DataCurrencyFromJson(json);
}