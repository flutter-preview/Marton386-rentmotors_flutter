import '../car/data_car.dart';
import '../currency/data_currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_search_car_response.freezed.dart';
part 'data_search_car_response.g.dart';

@freezed
class DataSearchCarResponse with _$DataSearchCarResponse {
  const factory DataSearchCarResponse({
    required List<DataCar> cars,
    required int days,
    required DataCurrency currency,
  }) = _DataSearchCarResponse;

  factory DataSearchCarResponse.fromJson(Map<String, dynamic> json) => _$DataSearchCarResponseFromJson(json);
}