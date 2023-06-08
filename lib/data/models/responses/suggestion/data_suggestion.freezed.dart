// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSuggestion _$DataSuggestionFromJson(Map<String, dynamic> json) {
  return _DataSuggestion.fromJson(json);
}

/// @nodoc
mixin _$DataSuggestion {
  int? get id => throw _privateConstructorUsedError;
  String get value =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get unrestricted_value => throw _privateConstructorUsedError;
  SuggestionDataDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSuggestionCopyWith<DataSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSuggestionCopyWith<$Res> {
  factory $DataSuggestionCopyWith(
          DataSuggestion value, $Res Function(DataSuggestion) then) =
      _$DataSuggestionCopyWithImpl<$Res, DataSuggestion>;
  @useResult
  $Res call(
      {int? id,
      String value,
      String unrestricted_value,
      SuggestionDataDTO data});

  $SuggestionDataDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$DataSuggestionCopyWithImpl<$Res, $Val extends DataSuggestion>
    implements $DataSuggestionCopyWith<$Res> {
  _$DataSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuggestionDataDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuggestionDataDTOCopyWith<$Res> get data {
    return $SuggestionDataDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataSuggestionCopyWith<$Res>
    implements $DataSuggestionCopyWith<$Res> {
  factory _$$_DataSuggestionCopyWith(
          _$_DataSuggestion value, $Res Function(_$_DataSuggestion) then) =
      __$$_DataSuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String value,
      String unrestricted_value,
      SuggestionDataDTO data});

  @override
  $SuggestionDataDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DataSuggestionCopyWithImpl<$Res>
    extends _$DataSuggestionCopyWithImpl<$Res, _$_DataSuggestion>
    implements _$$_DataSuggestionCopyWith<$Res> {
  __$$_DataSuggestionCopyWithImpl(
      _$_DataSuggestion _value, $Res Function(_$_DataSuggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = null,
    Object? unrestricted_value = null,
    Object? data = null,
  }) {
    return _then(_$_DataSuggestion(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: null == unrestricted_value
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SuggestionDataDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSuggestion implements _DataSuggestion {
  const _$_DataSuggestion(
      {required this.id,
      required this.value,
      required this.unrestricted_value,
      required this.data});

  factory _$_DataSuggestion.fromJson(Map<String, dynamic> json) =>
      _$$_DataSuggestionFromJson(json);

  @override
  final int? id;
  @override
  final String value;
// ignore: non_constant_identifier_names
  @override
  final String unrestricted_value;
  @override
  final SuggestionDataDTO data;

  @override
  String toString() {
    return 'DataSuggestion(id: $id, value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSuggestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unrestricted_value, unrestricted_value) ||
                other.unrestricted_value == unrestricted_value) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, unrestricted_value, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSuggestionCopyWith<_$_DataSuggestion> get copyWith =>
      __$$_DataSuggestionCopyWithImpl<_$_DataSuggestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSuggestionToJson(
      this,
    );
  }
}

abstract class _DataSuggestion implements DataSuggestion {
  const factory _DataSuggestion(
      {required final int? id,
      required final String value,
      required final String unrestricted_value,
      required final SuggestionDataDTO data}) = _$_DataSuggestion;

  factory _DataSuggestion.fromJson(Map<String, dynamic> json) =
      _$_DataSuggestion.fromJson;

  @override
  int? get id;
  @override
  String get value;
  @override // ignore: non_constant_identifier_names
  String get unrestricted_value;
  @override
  SuggestionDataDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataSuggestionCopyWith<_$_DataSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestionDataDTO _$SuggestionDataDTOFromJson(Map<String, dynamic> json) {
  return _SuggestionDataDTO.fromJson(json);
}

/// @nodoc
mixin _$SuggestionDataDTO {
  String? get kpp => throw _privateConstructorUsedError;
  ManagementDTO? get management => throw _privateConstructorUsedError;
  NameDTO get name => throw _privateConstructorUsedError;
  String get inn => throw _privateConstructorUsedError;
  String get ogrn => throw _privateConstructorUsedError;
  AddressDTO get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionDataDTOCopyWith<SuggestionDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionDataDTOCopyWith<$Res> {
  factory $SuggestionDataDTOCopyWith(
          SuggestionDataDTO value, $Res Function(SuggestionDataDTO) then) =
      _$SuggestionDataDTOCopyWithImpl<$Res, SuggestionDataDTO>;
  @useResult
  $Res call(
      {String? kpp,
      ManagementDTO? management,
      NameDTO name,
      String inn,
      String ogrn,
      AddressDTO address});

  $ManagementDTOCopyWith<$Res>? get management;
  $NameDTOCopyWith<$Res> get name;
  $AddressDTOCopyWith<$Res> get address;
}

/// @nodoc
class _$SuggestionDataDTOCopyWithImpl<$Res, $Val extends SuggestionDataDTO>
    implements $SuggestionDataDTOCopyWith<$Res> {
  _$SuggestionDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpp = freezed,
    Object? management = freezed,
    Object? name = null,
    Object? inn = null,
    Object? ogrn = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      kpp: freezed == kpp
          ? _value.kpp
          : kpp // ignore: cast_nullable_to_non_nullable
              as String?,
      management: freezed == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as ManagementDTO?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameDTO,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ManagementDTOCopyWith<$Res>? get management {
    if (_value.management == null) {
      return null;
    }

    return $ManagementDTOCopyWith<$Res>(_value.management!, (value) {
      return _then(_value.copyWith(management: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameDTOCopyWith<$Res> get name {
    return $NameDTOCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDTOCopyWith<$Res> get address {
    return $AddressDTOCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SuggestionDataDTOCopyWith<$Res>
    implements $SuggestionDataDTOCopyWith<$Res> {
  factory _$$_SuggestionDataDTOCopyWith(_$_SuggestionDataDTO value,
          $Res Function(_$_SuggestionDataDTO) then) =
      __$$_SuggestionDataDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kpp,
      ManagementDTO? management,
      NameDTO name,
      String inn,
      String ogrn,
      AddressDTO address});

  @override
  $ManagementDTOCopyWith<$Res>? get management;
  @override
  $NameDTOCopyWith<$Res> get name;
  @override
  $AddressDTOCopyWith<$Res> get address;
}

/// @nodoc
class __$$_SuggestionDataDTOCopyWithImpl<$Res>
    extends _$SuggestionDataDTOCopyWithImpl<$Res, _$_SuggestionDataDTO>
    implements _$$_SuggestionDataDTOCopyWith<$Res> {
  __$$_SuggestionDataDTOCopyWithImpl(
      _$_SuggestionDataDTO _value, $Res Function(_$_SuggestionDataDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kpp = freezed,
    Object? management = freezed,
    Object? name = null,
    Object? inn = null,
    Object? ogrn = null,
    Object? address = null,
  }) {
    return _then(_$_SuggestionDataDTO(
      kpp: freezed == kpp
          ? _value.kpp
          : kpp // ignore: cast_nullable_to_non_nullable
              as String?,
      management: freezed == management
          ? _value.management
          : management // ignore: cast_nullable_to_non_nullable
              as ManagementDTO?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameDTO,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      ogrn: null == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionDataDTO implements _SuggestionDataDTO {
  const _$_SuggestionDataDTO(
      {this.kpp,
      this.management,
      required this.name,
      required this.inn,
      required this.ogrn,
      required this.address});

  factory _$_SuggestionDataDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionDataDTOFromJson(json);

  @override
  final String? kpp;
  @override
  final ManagementDTO? management;
  @override
  final NameDTO name;
  @override
  final String inn;
  @override
  final String ogrn;
  @override
  final AddressDTO address;

  @override
  String toString() {
    return 'SuggestionDataDTO(kpp: $kpp, management: $management, name: $name, inn: $inn, ogrn: $ogrn, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionDataDTO &&
            (identical(other.kpp, kpp) || other.kpp == kpp) &&
            (identical(other.management, management) ||
                other.management == management) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.ogrn, ogrn) || other.ogrn == ogrn) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kpp, management, name, inn, ogrn, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionDataDTOCopyWith<_$_SuggestionDataDTO> get copyWith =>
      __$$_SuggestionDataDTOCopyWithImpl<_$_SuggestionDataDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionDataDTOToJson(
      this,
    );
  }
}

abstract class _SuggestionDataDTO implements SuggestionDataDTO {
  const factory _SuggestionDataDTO(
      {final String? kpp,
      final ManagementDTO? management,
      required final NameDTO name,
      required final String inn,
      required final String ogrn,
      required final AddressDTO address}) = _$_SuggestionDataDTO;

  factory _SuggestionDataDTO.fromJson(Map<String, dynamic> json) =
      _$_SuggestionDataDTO.fromJson;

  @override
  String? get kpp;
  @override
  ManagementDTO? get management;
  @override
  NameDTO get name;
  @override
  String get inn;
  @override
  String get ogrn;
  @override
  AddressDTO get address;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionDataDTOCopyWith<_$_SuggestionDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ManagementDTO _$ManagementDTOFromJson(Map<String, dynamic> json) {
  return _ManagementDTO.fromJson(json);
}

/// @nodoc
mixin _$ManagementDTO {
  String get name => throw _privateConstructorUsedError;
  String get post => throw _privateConstructorUsedError;
  String? get disqualified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagementDTOCopyWith<ManagementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagementDTOCopyWith<$Res> {
  factory $ManagementDTOCopyWith(
          ManagementDTO value, $Res Function(ManagementDTO) then) =
      _$ManagementDTOCopyWithImpl<$Res, ManagementDTO>;
  @useResult
  $Res call({String name, String post, String? disqualified});
}

/// @nodoc
class _$ManagementDTOCopyWithImpl<$Res, $Val extends ManagementDTO>
    implements $ManagementDTOCopyWith<$Res> {
  _$ManagementDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? post = null,
    Object? disqualified = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      disqualified: freezed == disqualified
          ? _value.disqualified
          : disqualified // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManagementDTOCopyWith<$Res>
    implements $ManagementDTOCopyWith<$Res> {
  factory _$$_ManagementDTOCopyWith(
          _$_ManagementDTO value, $Res Function(_$_ManagementDTO) then) =
      __$$_ManagementDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String post, String? disqualified});
}

/// @nodoc
class __$$_ManagementDTOCopyWithImpl<$Res>
    extends _$ManagementDTOCopyWithImpl<$Res, _$_ManagementDTO>
    implements _$$_ManagementDTOCopyWith<$Res> {
  __$$_ManagementDTOCopyWithImpl(
      _$_ManagementDTO _value, $Res Function(_$_ManagementDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? post = null,
    Object? disqualified = freezed,
  }) {
    return _then(_$_ManagementDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
      disqualified: freezed == disqualified
          ? _value.disqualified
          : disqualified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ManagementDTO implements _ManagementDTO {
  const _$_ManagementDTO(
      {required this.name, required this.post, this.disqualified});

  factory _$_ManagementDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ManagementDTOFromJson(json);

  @override
  final String name;
  @override
  final String post;
  @override
  final String? disqualified;

  @override
  String toString() {
    return 'ManagementDTO(name: $name, post: $post, disqualified: $disqualified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManagementDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.disqualified, disqualified) ||
                other.disqualified == disqualified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, post, disqualified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManagementDTOCopyWith<_$_ManagementDTO> get copyWith =>
      __$$_ManagementDTOCopyWithImpl<_$_ManagementDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManagementDTOToJson(
      this,
    );
  }
}

abstract class _ManagementDTO implements ManagementDTO {
  const factory _ManagementDTO(
      {required final String name,
      required final String post,
      final String? disqualified}) = _$_ManagementDTO;

  factory _ManagementDTO.fromJson(Map<String, dynamic> json) =
      _$_ManagementDTO.fromJson;

  @override
  String get name;
  @override
  String get post;
  @override
  String? get disqualified;
  @override
  @JsonKey(ignore: true)
  _$$_ManagementDTOCopyWith<_$_ManagementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

NameDTO _$NameDTOFromJson(Map<String, dynamic> json) {
  return _NameDTO.fromJson(json);
}

/// @nodoc
mixin _$NameDTO {
// ignore: non_constant_identifier_names
  String get full_with_opf =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get short_with_opf => throw _privateConstructorUsedError;
  String? get latin => throw _privateConstructorUsedError;
  String? get full => throw _privateConstructorUsedError;
  String? get short => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameDTOCopyWith<NameDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDTOCopyWith<$Res> {
  factory $NameDTOCopyWith(NameDTO value, $Res Function(NameDTO) then) =
      _$NameDTOCopyWithImpl<$Res, NameDTO>;
  @useResult
  $Res call(
      {String full_with_opf,
      String? short_with_opf,
      String? latin,
      String? full,
      String? short});
}

/// @nodoc
class _$NameDTOCopyWithImpl<$Res, $Val extends NameDTO>
    implements $NameDTOCopyWith<$Res> {
  _$NameDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_with_opf = null,
    Object? short_with_opf = freezed,
    Object? latin = freezed,
    Object? full = freezed,
    Object? short = freezed,
  }) {
    return _then(_value.copyWith(
      full_with_opf: null == full_with_opf
          ? _value.full_with_opf
          : full_with_opf // ignore: cast_nullable_to_non_nullable
              as String,
      short_with_opf: freezed == short_with_opf
          ? _value.short_with_opf
          : short_with_opf // ignore: cast_nullable_to_non_nullable
              as String?,
      latin: freezed == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameDTOCopyWith<$Res> implements $NameDTOCopyWith<$Res> {
  factory _$$_NameDTOCopyWith(
          _$_NameDTO value, $Res Function(_$_NameDTO) then) =
      __$$_NameDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String full_with_opf,
      String? short_with_opf,
      String? latin,
      String? full,
      String? short});
}

/// @nodoc
class __$$_NameDTOCopyWithImpl<$Res>
    extends _$NameDTOCopyWithImpl<$Res, _$_NameDTO>
    implements _$$_NameDTOCopyWith<$Res> {
  __$$_NameDTOCopyWithImpl(_$_NameDTO _value, $Res Function(_$_NameDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full_with_opf = null,
    Object? short_with_opf = freezed,
    Object? latin = freezed,
    Object? full = freezed,
    Object? short = freezed,
  }) {
    return _then(_$_NameDTO(
      full_with_opf: null == full_with_opf
          ? _value.full_with_opf
          : full_with_opf // ignore: cast_nullable_to_non_nullable
              as String,
      short_with_opf: freezed == short_with_opf
          ? _value.short_with_opf
          : short_with_opf // ignore: cast_nullable_to_non_nullable
              as String?,
      latin: freezed == latin
          ? _value.latin
          : latin // ignore: cast_nullable_to_non_nullable
              as String?,
      full: freezed == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameDTO implements _NameDTO {
  const _$_NameDTO(
      {required this.full_with_opf,
      this.short_with_opf,
      this.latin,
      this.full,
      this.short});

  factory _$_NameDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NameDTOFromJson(json);

// ignore: non_constant_identifier_names
  @override
  final String full_with_opf;
// ignore: non_constant_identifier_names
  @override
  final String? short_with_opf;
  @override
  final String? latin;
  @override
  final String? full;
  @override
  final String? short;

  @override
  String toString() {
    return 'NameDTO(full_with_opf: $full_with_opf, short_with_opf: $short_with_opf, latin: $latin, full: $full, short: $short)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameDTO &&
            (identical(other.full_with_opf, full_with_opf) ||
                other.full_with_opf == full_with_opf) &&
            (identical(other.short_with_opf, short_with_opf) ||
                other.short_with_opf == short_with_opf) &&
            (identical(other.latin, latin) || other.latin == latin) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.short, short) || other.short == short));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, full_with_opf, short_with_opf, latin, full, short);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameDTOCopyWith<_$_NameDTO> get copyWith =>
      __$$_NameDTOCopyWithImpl<_$_NameDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameDTOToJson(
      this,
    );
  }
}

abstract class _NameDTO implements NameDTO {
  const factory _NameDTO(
      {required final String full_with_opf,
      final String? short_with_opf,
      final String? latin,
      final String? full,
      final String? short}) = _$_NameDTO;

  factory _NameDTO.fromJson(Map<String, dynamic> json) = _$_NameDTO.fromJson;

  @override // ignore: non_constant_identifier_names
  String get full_with_opf;
  @override // ignore: non_constant_identifier_names
  String? get short_with_opf;
  @override
  String? get latin;
  @override
  String? get full;
  @override
  String? get short;
  @override
  @JsonKey(ignore: true)
  _$$_NameDTOCopyWith<_$_NameDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDTO {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDTOCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$_AddressDTOCopyWith(
          _$_AddressDTO value, $Res Function(_$_AddressDTO) then) =
      __$$_AddressDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AddressDTOCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$_AddressDTO>
    implements _$$_AddressDTOCopyWith<$Res> {
  __$$_AddressDTOCopyWithImpl(
      _$_AddressDTO _value, $Res Function(_$_AddressDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AddressDTO(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDTO implements _AddressDTO {
  const _$_AddressDTO({required this.value});

  factory _$_AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDTOFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'AddressDTO(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDTO &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      __$$_AddressDTOCopyWithImpl<_$_AddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDTOToJson(
      this,
    );
  }
}

abstract class _AddressDTO implements AddressDTO {
  const factory _AddressDTO({required final String value}) = _$_AddressDTO;

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressDTO.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
