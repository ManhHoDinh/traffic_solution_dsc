// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'TrafficData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrafficData _$TrafficDataFromJson(Map<String, dynamic> json) {
  return _TrafficData.fromJson(json);
}

/// @nodoc
mixin _$TrafficData {
  @JsonKey(name: 'TF_ID')
  String? get trafficDataId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SS_ID')
  String? get streetSegmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TF_COUNT_MOTOBIKE')
  int? get moto => throw _privateConstructorUsedError;
  @JsonKey(name: 'TF_COUNT_CAR')
  int? get car => throw _privateConstructorUsedError;
  @JsonKey(name: 'TF_COUNT_OTHERS')
  int? get other => throw _privateConstructorUsedError;
  @JsonKey(name: 'TF_TIME')
  @TimestampSerializer()
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrafficDataCopyWith<TrafficData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficDataCopyWith<$Res> {
  factory $TrafficDataCopyWith(
          TrafficData value, $Res Function(TrafficData) then) =
      _$TrafficDataCopyWithImpl<$Res, TrafficData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'TF_ID') String? trafficDataId,
      @JsonKey(name: 'SS_ID') String? streetSegmentId,
      @JsonKey(name: 'TF_COUNT_MOTOBIKE') int? moto,
      @JsonKey(name: 'TF_COUNT_CAR') int? car,
      @JsonKey(name: 'TF_COUNT_OTHERS') int? other,
      @JsonKey(name: 'TF_TIME') @TimestampSerializer() DateTime time});
}

/// @nodoc
class _$TrafficDataCopyWithImpl<$Res, $Val extends TrafficData>
    implements $TrafficDataCopyWith<$Res> {
  _$TrafficDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficDataId = freezed,
    Object? streetSegmentId = freezed,
    Object? moto = freezed,
    Object? car = freezed,
    Object? other = freezed,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      trafficDataId: freezed == trafficDataId
          ? _value.trafficDataId
          : trafficDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      streetSegmentId: freezed == streetSegmentId
          ? _value.streetSegmentId
          : streetSegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      moto: freezed == moto
          ? _value.moto
          : moto // ignore: cast_nullable_to_non_nullable
              as int?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as int?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrafficDataCopyWith<$Res>
    implements $TrafficDataCopyWith<$Res> {
  factory _$$_TrafficDataCopyWith(
          _$_TrafficData value, $Res Function(_$_TrafficData) then) =
      __$$_TrafficDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'TF_ID') String? trafficDataId,
      @JsonKey(name: 'SS_ID') String? streetSegmentId,
      @JsonKey(name: 'TF_COUNT_MOTOBIKE') int? moto,
      @JsonKey(name: 'TF_COUNT_CAR') int? car,
      @JsonKey(name: 'TF_COUNT_OTHERS') int? other,
      @JsonKey(name: 'TF_TIME') @TimestampSerializer() DateTime time});
}

/// @nodoc
class __$$_TrafficDataCopyWithImpl<$Res>
    extends _$TrafficDataCopyWithImpl<$Res, _$_TrafficData>
    implements _$$_TrafficDataCopyWith<$Res> {
  __$$_TrafficDataCopyWithImpl(
      _$_TrafficData _value, $Res Function(_$_TrafficData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficDataId = freezed,
    Object? streetSegmentId = freezed,
    Object? moto = freezed,
    Object? car = freezed,
    Object? other = freezed,
    Object? time = null,
  }) {
    return _then(_$_TrafficData(
      trafficDataId: freezed == trafficDataId
          ? _value.trafficDataId
          : trafficDataId // ignore: cast_nullable_to_non_nullable
              as String?,
      streetSegmentId: freezed == streetSegmentId
          ? _value.streetSegmentId
          : streetSegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      moto: freezed == moto
          ? _value.moto
          : moto // ignore: cast_nullable_to_non_nullable
              as int?,
      car: freezed == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as int?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrafficData with DiagnosticableTreeMixin implements _TrafficData {
  const _$_TrafficData(
      {@JsonKey(name: 'TF_ID') this.trafficDataId,
      @JsonKey(name: 'SS_ID') this.streetSegmentId,
      @JsonKey(name: 'TF_COUNT_MOTOBIKE') this.moto,
      @JsonKey(name: 'TF_COUNT_CAR') this.car,
      @JsonKey(name: 'TF_COUNT_OTHERS') this.other,
      @JsonKey(name: 'TF_TIME') @TimestampSerializer() required this.time});

  factory _$_TrafficData.fromJson(Map<String, dynamic> json) =>
      _$$_TrafficDataFromJson(json);

  @override
  @JsonKey(name: 'TF_ID')
  final String? trafficDataId;
  @override
  @JsonKey(name: 'SS_ID')
  final String? streetSegmentId;
  @override
  @JsonKey(name: 'TF_COUNT_MOTOBIKE')
  final int? moto;
  @override
  @JsonKey(name: 'TF_COUNT_CAR')
  final int? car;
  @override
  @JsonKey(name: 'TF_COUNT_OTHERS')
  final int? other;
  @override
  @JsonKey(name: 'TF_TIME')
  @TimestampSerializer()
  final DateTime time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrafficData(trafficDataId: $trafficDataId, streetSegmentId: $streetSegmentId, moto: $moto, car: $car, other: $other, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrafficData'))
      ..add(DiagnosticsProperty('trafficDataId', trafficDataId))
      ..add(DiagnosticsProperty('streetSegmentId', streetSegmentId))
      ..add(DiagnosticsProperty('moto', moto))
      ..add(DiagnosticsProperty('car', car))
      ..add(DiagnosticsProperty('other', other))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficData &&
            (identical(other.trafficDataId, trafficDataId) ||
                other.trafficDataId == trafficDataId) &&
            (identical(other.streetSegmentId, streetSegmentId) ||
                other.streetSegmentId == streetSegmentId) &&
            (identical(other.moto, moto) || other.moto == moto) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trafficDataId, streetSegmentId, moto, car, other, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficDataCopyWith<_$_TrafficData> get copyWith =>
      __$$_TrafficDataCopyWithImpl<_$_TrafficData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrafficDataToJson(
      this,
    );
  }
}

abstract class _TrafficData implements TrafficData {
  const factory _TrafficData(
      {@JsonKey(name: 'TF_ID') final String? trafficDataId,
      @JsonKey(name: 'SS_ID') final String? streetSegmentId,
      @JsonKey(name: 'TF_COUNT_MOTOBIKE') final int? moto,
      @JsonKey(name: 'TF_COUNT_CAR') final int? car,
      @JsonKey(name: 'TF_COUNT_OTHERS') final int? other,
      @JsonKey(name: 'TF_TIME')
      @TimestampSerializer()
      required final DateTime time}) = _$_TrafficData;

  factory _TrafficData.fromJson(Map<String, dynamic> json) =
      _$_TrafficData.fromJson;

  @override
  @JsonKey(name: 'TF_ID')
  String? get trafficDataId;
  @override
  @JsonKey(name: 'SS_ID')
  String? get streetSegmentId;
  @override
  @JsonKey(name: 'TF_COUNT_MOTOBIKE')
  int? get moto;
  @override
  @JsonKey(name: 'TF_COUNT_CAR')
  int? get car;
  @override
  @JsonKey(name: 'TF_COUNT_OTHERS')
  int? get other;
  @override
  @JsonKey(name: 'TF_TIME')
  @TimestampSerializer()
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_TrafficDataCopyWith<_$_TrafficData> get copyWith =>
      throw _privateConstructorUsedError;
}
