import '../fee/data_fee.dart';
import '../extra/data_extra.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_car.freezed.dart';
part 'data_car.g.dart';

@freezed
class DataCar with _$DataCar {
  const factory DataCar({
    // ignore: non_constant_identifier_names
    required String car_id,
    // ignore: non_constant_identifier_names
    required CarInfo car_info,
    // ignore: non_constant_identifier_names
    required bool on_request,
    required List<DataFee> fees,
    required List<DataExtra> extras,
    // ignore: non_constant_identifier_names
    required double net_rate,
    // ignore: non_constant_identifier_names
    required List<String> included_features,
    required int mileage,
    Promo? promo,
  }) = _DataCar;

  factory DataCar.fromJson(Map<String, dynamic> json) => _$DataCarFromJson(json);
}

@freezed
class CarInfo with _$CarInfo {
  const factory CarInfo({
    required String code,
    required int at,
    required int ac,
    required int seats,
    required int doors,
    // ignore: non_constant_identifier_names
    required int bag_small,
    // ignore: non_constant_identifier_names
    required int bag_big,
    // ignore: non_constant_identifier_names
    required String car_name,
    // ignore: non_constant_identifier_names
    required String car_url_transparent,
    required double deposit,
    required int ev,
  }) = _CarInfo;

factory CarInfo.fromJson(Map<String, dynamic> json) => _$CarInfoFromJson(json);
}

@freezed
class Promo with _$Promo {
  const factory Promo({
    required String code,
    required String title,
    required String description,
    int? type,
    int? value,
    // ignore: non_constant_identifier_names
    String? sale_type,
    // ignore: non_constant_identifier_names
    String? sale_value,
  }) = _Promo;

factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);
}