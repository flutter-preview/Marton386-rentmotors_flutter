import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_station.freezed.dart';
part 'data_station.g.dart';

@freezed
class DataStation with _$DataStation {
  const factory DataStation({
    required int id,
    required String title,
    // ignore: non_constant_identifier_names
    required String short_code,
    // ignore: non_constant_identifier_names
    required int place_type,
    // ignore: non_constant_identifier_names
    required int service_type,
    required bool keybox,
    // ignore: non_constant_identifier_names
    required int GMT,
    required PositionDTO position,
    required String phone,
    required String address,
    required WorktimeDTO worktime,
  }) = _DataStation;

  factory DataStation.fromJson(Map<String, dynamic> json) => _$DataStationFromJson(json);
}

@freezed
class PositionDTO with _$PositionDTO {
  const factory PositionDTO({
    required double longitude,
    required double latitude,
  }) = _PositionDTO;

  factory PositionDTO.fromJson(Map<String, dynamic> json) => _$PositionDTOFromJson(json);
}

@freezed
class WorktimeDTO with _$WorktimeDTO {
  const factory WorktimeDTO({
    required DayWorkTime day1,
  }) = _WorktimeDTO;

  factory WorktimeDTO.fromJson(Map<String, dynamic> json) => _$WorktimeDTOFromJson(json);
}

@freezed
class DayWorkTime with _$DayWorkTime {
  const factory DayWorkTime({
    required int start,
    required int finish,
    // ignore: non_constant_identifier_names
    required bool ooh_service,
  }) = _DayWorkTime;

  factory DayWorkTime.fromJson(Map<String, dynamic> json) => _$DayWorkTimeFromJson(json);
}