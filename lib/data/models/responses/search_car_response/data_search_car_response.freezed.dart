// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_search_car_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSearchCarResponse _$DataSearchCarResponseFromJson(
    Map<String, dynamic> json) {
  return _DataSearchCarResponse.fromJson(json);
}

/// @nodoc
mixin _$DataSearchCarResponse {
  List<DataCar> get cars => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;
  DataCurrency get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSearchCarResponseCopyWith<DataSearchCarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSearchCarResponseCopyWith<$Res> {
  factory $DataSearchCarResponseCopyWith(DataSearchCarResponse value,
          $Res Function(DataSearchCarResponse) then) =
      _$DataSearchCarResponseCopyWithImpl<$Res, DataSearchCarResponse>;
  @useResult
  $Res call({List<DataCar> cars, int days, DataCurrency currency});

  $DataCurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class _$DataSearchCarResponseCopyWithImpl<$Res,
        $Val extends DataSearchCarResponse>
    implements $DataSearchCarResponseCopyWith<$Res> {
  _$DataSearchCarResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? days = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<DataCar>,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as DataCurrency,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCurrencyCopyWith<$Res> get currency {
    return $DataCurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataSearchCarResponseCopyWith<$Res>
    implements $DataSearchCarResponseCopyWith<$Res> {
  factory _$$_DataSearchCarResponseCopyWith(_$_DataSearchCarResponse value,
          $Res Function(_$_DataSearchCarResponse) then) =
      __$$_DataSearchCarResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataCar> cars, int days, DataCurrency currency});

  @override
  $DataCurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class __$$_DataSearchCarResponseCopyWithImpl<$Res>
    extends _$DataSearchCarResponseCopyWithImpl<$Res, _$_DataSearchCarResponse>
    implements _$$_DataSearchCarResponseCopyWith<$Res> {
  __$$_DataSearchCarResponseCopyWithImpl(_$_DataSearchCarResponse _value,
      $Res Function(_$_DataSearchCarResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
    Object? days = null,
    Object? currency = null,
  }) {
    return _then(_$_DataSearchCarResponse(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<DataCar>,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as DataCurrency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSearchCarResponse implements _DataSearchCarResponse {
  const _$_DataSearchCarResponse(
      {required final List<DataCar> cars,
      required this.days,
      required this.currency})
      : _cars = cars;

  factory _$_DataSearchCarResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DataSearchCarResponseFromJson(json);

  final List<DataCar> _cars;
  @override
  List<DataCar> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final int days;
  @override
  final DataCurrency currency;

  @override
  String toString() {
    return 'DataSearchCarResponse(cars: $cars, days: $days, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSearchCarResponse &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cars), days, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSearchCarResponseCopyWith<_$_DataSearchCarResponse> get copyWith =>
      __$$_DataSearchCarResponseCopyWithImpl<_$_DataSearchCarResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSearchCarResponseToJson(
      this,
    );
  }
}

abstract class _DataSearchCarResponse implements DataSearchCarResponse {
  const factory _DataSearchCarResponse(
      {required final List<DataCar> cars,
      required final int days,
      required final DataCurrency currency}) = _$_DataSearchCarResponse;

  factory _DataSearchCarResponse.fromJson(Map<String, dynamic> json) =
      _$_DataSearchCarResponse.fromJson;

  @override
  List<DataCar> get cars;
  @override
  int get days;
  @override
  DataCurrency get currency;
  @override
  @JsonKey(ignore: true)
  _$$_DataSearchCarResponseCopyWith<_$_DataSearchCarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
