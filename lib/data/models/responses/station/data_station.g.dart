// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataStation _$$_DataStationFromJson(Map<String, dynamic> json) =>
    _$_DataStation(
      id: json['id'] as int,
      title: json['title'] as String,
      short_code: json['short_code'] as String,
      place_type: json['place_type'] as int,
      service_type: json['service_type'] as int,
      keybox: json['keybox'] as bool,
      GMT: json['GMT'] as int,
      position: PositionDTO.fromJson(json['position'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      address: json['address'] as String,
      worktime: WorktimeDTO.fromJson(json['worktime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataStationToJson(_$_DataStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_code': instance.short_code,
      'place_type': instance.place_type,
      'service_type': instance.service_type,
      'keybox': instance.keybox,
      'GMT': instance.GMT,
      'position': instance.position,
      'phone': instance.phone,
      'address': instance.address,
      'worktime': instance.worktime,
    };

_$_PositionDTO _$$_PositionDTOFromJson(Map<String, dynamic> json) =>
    _$_PositionDTO(
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PositionDTOToJson(_$_PositionDTO instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$_WorktimeDTO _$$_WorktimeDTOFromJson(Map<String, dynamic> json) =>
    _$_WorktimeDTO(
      day1: DayWorkTime.fromJson(json['day1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WorktimeDTOToJson(_$_WorktimeDTO instance) =>
    <String, dynamic>{
      'day1': instance.day1,
    };

_$_DayWorkTime _$$_DayWorkTimeFromJson(Map<String, dynamic> json) =>
    _$_DayWorkTime(
      start: json['start'] as int,
      finish: json['finish'] as int,
      ooh_service: json['ooh_service'] as bool,
    );

Map<String, dynamic> _$$_DayWorkTimeToJson(_$_DayWorkTime instance) =>
    <String, dynamic>{
      'start': instance.start,
      'finish': instance.finish,
      'ooh_service': instance.ooh_service,
    };
