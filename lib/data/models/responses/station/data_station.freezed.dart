// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataStation _$DataStationFromJson(Map<String, dynamic> json) {
  return _DataStation.fromJson(json);
}

/// @nodoc
mixin _$DataStation {
  int get id => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get short_code =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get place_type =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get service_type => throw _privateConstructorUsedError;
  bool get keybox =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get GMT => throw _privateConstructorUsedError;
  PositionDTO get position => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  WorktimeDTO get worktime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataStationCopyWith<DataStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStationCopyWith<$Res> {
  factory $DataStationCopyWith(
          DataStation value, $Res Function(DataStation) then) =
      _$DataStationCopyWithImpl<$Res, DataStation>;
  @useResult
  $Res call(
      {int id,
      String title,
      String short_code,
      int place_type,
      int service_type,
      bool keybox,
      int GMT,
      PositionDTO position,
      String phone,
      String address,
      WorktimeDTO worktime});

  $PositionDTOCopyWith<$Res> get position;
  $WorktimeDTOCopyWith<$Res> get worktime;
}

/// @nodoc
class _$DataStationCopyWithImpl<$Res, $Val extends DataStation>
    implements $DataStationCopyWith<$Res> {
  _$DataStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_code = null,
    Object? place_type = null,
    Object? service_type = null,
    Object? keybox = null,
    Object? GMT = null,
    Object? position = null,
    Object? phone = null,
    Object? address = null,
    Object? worktime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
      place_type: null == place_type
          ? _value.place_type
          : place_type // ignore: cast_nullable_to_non_nullable
              as int,
      service_type: null == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as int,
      keybox: null == keybox
          ? _value.keybox
          : keybox // ignore: cast_nullable_to_non_nullable
              as bool,
      GMT: null == GMT
          ? _value.GMT
          : GMT // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDTO,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      worktime: null == worktime
          ? _value.worktime
          : worktime // ignore: cast_nullable_to_non_nullable
              as WorktimeDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionDTOCopyWith<$Res> get position {
    return $PositionDTOCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorktimeDTOCopyWith<$Res> get worktime {
    return $WorktimeDTOCopyWith<$Res>(_value.worktime, (value) {
      return _then(_value.copyWith(worktime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataStationCopyWith<$Res>
    implements $DataStationCopyWith<$Res> {
  factory _$$_DataStationCopyWith(
          _$_DataStation value, $Res Function(_$_DataStation) then) =
      __$$_DataStationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String short_code,
      int place_type,
      int service_type,
      bool keybox,
      int GMT,
      PositionDTO position,
      String phone,
      String address,
      WorktimeDTO worktime});

  @override
  $PositionDTOCopyWith<$Res> get position;
  @override
  $WorktimeDTOCopyWith<$Res> get worktime;
}

/// @nodoc
class __$$_DataStationCopyWithImpl<$Res>
    extends _$DataStationCopyWithImpl<$Res, _$_DataStation>
    implements _$$_DataStationCopyWith<$Res> {
  __$$_DataStationCopyWithImpl(
      _$_DataStation _value, $Res Function(_$_DataStation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_code = null,
    Object? place_type = null,
    Object? service_type = null,
    Object? keybox = null,
    Object? GMT = null,
    Object? position = null,
    Object? phone = null,
    Object? address = null,
    Object? worktime = null,
  }) {
    return _then(_$_DataStation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_code: null == short_code
          ? _value.short_code
          : short_code // ignore: cast_nullable_to_non_nullable
              as String,
      place_type: null == place_type
          ? _value.place_type
          : place_type // ignore: cast_nullable_to_non_nullable
              as int,
      service_type: null == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as int,
      keybox: null == keybox
          ? _value.keybox
          : keybox // ignore: cast_nullable_to_non_nullable
              as bool,
      GMT: null == GMT
          ? _value.GMT
          : GMT // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDTO,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      worktime: null == worktime
          ? _value.worktime
          : worktime // ignore: cast_nullable_to_non_nullable
              as WorktimeDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataStation implements _DataStation {
  const _$_DataStation(
      {required this.id,
      required this.title,
      required this.short_code,
      required this.place_type,
      required this.service_type,
      required this.keybox,
      required this.GMT,
      required this.position,
      required this.phone,
      required this.address,
      required this.worktime});

  factory _$_DataStation.fromJson(Map<String, dynamic> json) =>
      _$$_DataStationFromJson(json);

  @override
  final int id;
  @override
  final String title;
// ignore: non_constant_identifier_names
  @override
  final String short_code;
// ignore: non_constant_identifier_names
  @override
  final int place_type;
// ignore: non_constant_identifier_names
  @override
  final int service_type;
  @override
  final bool keybox;
// ignore: non_constant_identifier_names
  @override
  final int GMT;
  @override
  final PositionDTO position;
  @override
  final String phone;
  @override
  final String address;
  @override
  final WorktimeDTO worktime;

  @override
  String toString() {
    return 'DataStation(id: $id, title: $title, short_code: $short_code, place_type: $place_type, service_type: $service_type, keybox: $keybox, GMT: $GMT, position: $position, phone: $phone, address: $address, worktime: $worktime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataStation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.short_code, short_code) ||
                other.short_code == short_code) &&
            (identical(other.place_type, place_type) ||
                other.place_type == place_type) &&
            (identical(other.service_type, service_type) ||
                other.service_type == service_type) &&
            (identical(other.keybox, keybox) || other.keybox == keybox) &&
            (identical(other.GMT, GMT) || other.GMT == GMT) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.worktime, worktime) ||
                other.worktime == worktime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      short_code,
      place_type,
      service_type,
      keybox,
      GMT,
      position,
      phone,
      address,
      worktime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataStationCopyWith<_$_DataStation> get copyWith =>
      __$$_DataStationCopyWithImpl<_$_DataStation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataStationToJson(
      this,
    );
  }
}

abstract class _DataStation implements DataStation {
  const factory _DataStation(
      {required final int id,
      required final String title,
      required final String short_code,
      required final int place_type,
      required final int service_type,
      required final bool keybox,
      required final int GMT,
      required final PositionDTO position,
      required final String phone,
      required final String address,
      required final WorktimeDTO worktime}) = _$_DataStation;

  factory _DataStation.fromJson(Map<String, dynamic> json) =
      _$_DataStation.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override // ignore: non_constant_identifier_names
  String get short_code;
  @override // ignore: non_constant_identifier_names
  int get place_type;
  @override // ignore: non_constant_identifier_names
  int get service_type;
  @override
  bool get keybox;
  @override // ignore: non_constant_identifier_names
  int get GMT;
  @override
  PositionDTO get position;
  @override
  String get phone;
  @override
  String get address;
  @override
  WorktimeDTO get worktime;
  @override
  @JsonKey(ignore: true)
  _$$_DataStationCopyWith<_$_DataStation> get copyWith =>
      throw _privateConstructorUsedError;
}

PositionDTO _$PositionDTOFromJson(Map<String, dynamic> json) {
  return _PositionDTO.fromJson(json);
}

/// @nodoc
mixin _$PositionDTO {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionDTOCopyWith<PositionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDTOCopyWith<$Res> {
  factory $PositionDTOCopyWith(
          PositionDTO value, $Res Function(PositionDTO) then) =
      _$PositionDTOCopyWithImpl<$Res, PositionDTO>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$PositionDTOCopyWithImpl<$Res, $Val extends PositionDTO>
    implements $PositionDTOCopyWith<$Res> {
  _$PositionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionDTOCopyWith<$Res>
    implements $PositionDTOCopyWith<$Res> {
  factory _$$_PositionDTOCopyWith(
          _$_PositionDTO value, $Res Function(_$_PositionDTO) then) =
      __$$_PositionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$_PositionDTOCopyWithImpl<$Res>
    extends _$PositionDTOCopyWithImpl<$Res, _$_PositionDTO>
    implements _$$_PositionDTOCopyWith<$Res> {
  __$$_PositionDTOCopyWithImpl(
      _$_PositionDTO _value, $Res Function(_$_PositionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_PositionDTO(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositionDTO implements _PositionDTO {
  const _$_PositionDTO({required this.longitude, required this.latitude});

  factory _$_PositionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PositionDTOFromJson(json);

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'PositionDTO(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionDTO &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionDTOCopyWith<_$_PositionDTO> get copyWith =>
      __$$_PositionDTOCopyWithImpl<_$_PositionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionDTOToJson(
      this,
    );
  }
}

abstract class _PositionDTO implements PositionDTO {
  const factory _PositionDTO(
      {required final double longitude,
      required final double latitude}) = _$_PositionDTO;

  factory _PositionDTO.fromJson(Map<String, dynamic> json) =
      _$_PositionDTO.fromJson;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_PositionDTOCopyWith<_$_PositionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

WorktimeDTO _$WorktimeDTOFromJson(Map<String, dynamic> json) {
  return _WorktimeDTO.fromJson(json);
}

/// @nodoc
mixin _$WorktimeDTO {
  DayWorkTime get day1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorktimeDTOCopyWith<WorktimeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorktimeDTOCopyWith<$Res> {
  factory $WorktimeDTOCopyWith(
          WorktimeDTO value, $Res Function(WorktimeDTO) then) =
      _$WorktimeDTOCopyWithImpl<$Res, WorktimeDTO>;
  @useResult
  $Res call({DayWorkTime day1});

  $DayWorkTimeCopyWith<$Res> get day1;
}

/// @nodoc
class _$WorktimeDTOCopyWithImpl<$Res, $Val extends WorktimeDTO>
    implements $WorktimeDTOCopyWith<$Res> {
  _$WorktimeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day1 = null,
  }) {
    return _then(_value.copyWith(
      day1: null == day1
          ? _value.day1
          : day1 // ignore: cast_nullable_to_non_nullable
              as DayWorkTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DayWorkTimeCopyWith<$Res> get day1 {
    return $DayWorkTimeCopyWith<$Res>(_value.day1, (value) {
      return _then(_value.copyWith(day1: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WorktimeDTOCopyWith<$Res>
    implements $WorktimeDTOCopyWith<$Res> {
  factory _$$_WorktimeDTOCopyWith(
          _$_WorktimeDTO value, $Res Function(_$_WorktimeDTO) then) =
      __$$_WorktimeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DayWorkTime day1});

  @override
  $DayWorkTimeCopyWith<$Res> get day1;
}

/// @nodoc
class __$$_WorktimeDTOCopyWithImpl<$Res>
    extends _$WorktimeDTOCopyWithImpl<$Res, _$_WorktimeDTO>
    implements _$$_WorktimeDTOCopyWith<$Res> {
  __$$_WorktimeDTOCopyWithImpl(
      _$_WorktimeDTO _value, $Res Function(_$_WorktimeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day1 = null,
  }) {
    return _then(_$_WorktimeDTO(
      day1: null == day1
          ? _value.day1
          : day1 // ignore: cast_nullable_to_non_nullable
              as DayWorkTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorktimeDTO implements _WorktimeDTO {
  const _$_WorktimeDTO({required this.day1});

  factory _$_WorktimeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WorktimeDTOFromJson(json);

  @override
  final DayWorkTime day1;

  @override
  String toString() {
    return 'WorktimeDTO(day1: $day1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorktimeDTO &&
            (identical(other.day1, day1) || other.day1 == day1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorktimeDTOCopyWith<_$_WorktimeDTO> get copyWith =>
      __$$_WorktimeDTOCopyWithImpl<_$_WorktimeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorktimeDTOToJson(
      this,
    );
  }
}

abstract class _WorktimeDTO implements WorktimeDTO {
  const factory _WorktimeDTO({required final DayWorkTime day1}) =
      _$_WorktimeDTO;

  factory _WorktimeDTO.fromJson(Map<String, dynamic> json) =
      _$_WorktimeDTO.fromJson;

  @override
  DayWorkTime get day1;
  @override
  @JsonKey(ignore: true)
  _$$_WorktimeDTOCopyWith<_$_WorktimeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DayWorkTime _$DayWorkTimeFromJson(Map<String, dynamic> json) {
  return _DayWorkTime.fromJson(json);
}

/// @nodoc
mixin _$DayWorkTime {
  int get start => throw _privateConstructorUsedError;
  int get finish =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  bool get ooh_service => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWorkTimeCopyWith<DayWorkTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWorkTimeCopyWith<$Res> {
  factory $DayWorkTimeCopyWith(
          DayWorkTime value, $Res Function(DayWorkTime) then) =
      _$DayWorkTimeCopyWithImpl<$Res, DayWorkTime>;
  @useResult
  $Res call({int start, int finish, bool ooh_service});
}

/// @nodoc
class _$DayWorkTimeCopyWithImpl<$Res, $Val extends DayWorkTime>
    implements $DayWorkTimeCopyWith<$Res> {
  _$DayWorkTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? finish = null,
    Object? ooh_service = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      finish: null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as int,
      ooh_service: null == ooh_service
          ? _value.ooh_service
          : ooh_service // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayWorkTimeCopyWith<$Res>
    implements $DayWorkTimeCopyWith<$Res> {
  factory _$$_DayWorkTimeCopyWith(
          _$_DayWorkTime value, $Res Function(_$_DayWorkTime) then) =
      __$$_DayWorkTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int finish, bool ooh_service});
}

/// @nodoc
class __$$_DayWorkTimeCopyWithImpl<$Res>
    extends _$DayWorkTimeCopyWithImpl<$Res, _$_DayWorkTime>
    implements _$$_DayWorkTimeCopyWith<$Res> {
  __$$_DayWorkTimeCopyWithImpl(
      _$_DayWorkTime _value, $Res Function(_$_DayWorkTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? finish = null,
    Object? ooh_service = null,
  }) {
    return _then(_$_DayWorkTime(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      finish: null == finish
          ? _value.finish
          : finish // ignore: cast_nullable_to_non_nullable
              as int,
      ooh_service: null == ooh_service
          ? _value.ooh_service
          : ooh_service // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayWorkTime implements _DayWorkTime {
  const _$_DayWorkTime(
      {required this.start, required this.finish, required this.ooh_service});

  factory _$_DayWorkTime.fromJson(Map<String, dynamic> json) =>
      _$$_DayWorkTimeFromJson(json);

  @override
  final int start;
  @override
  final int finish;
// ignore: non_constant_identifier_names
  @override
  final bool ooh_service;

  @override
  String toString() {
    return 'DayWorkTime(start: $start, finish: $finish, ooh_service: $ooh_service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayWorkTime &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.finish, finish) || other.finish == finish) &&
            (identical(other.ooh_service, ooh_service) ||
                other.ooh_service == ooh_service));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, finish, ooh_service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayWorkTimeCopyWith<_$_DayWorkTime> get copyWith =>
      __$$_DayWorkTimeCopyWithImpl<_$_DayWorkTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayWorkTimeToJson(
      this,
    );
  }
}

abstract class _DayWorkTime implements DayWorkTime {
  const factory _DayWorkTime(
      {required final int start,
      required final int finish,
      required final bool ooh_service}) = _$_DayWorkTime;

  factory _DayWorkTime.fromJson(Map<String, dynamic> json) =
      _$_DayWorkTime.fromJson;

  @override
  int get start;
  @override
  int get finish;
  @override // ignore: non_constant_identifier_names
  bool get ooh_service;
  @override
  @JsonKey(ignore: true)
  _$$_DayWorkTimeCopyWith<_$_DayWorkTime> get copyWith =>
      throw _privateConstructorUsedError;
}
