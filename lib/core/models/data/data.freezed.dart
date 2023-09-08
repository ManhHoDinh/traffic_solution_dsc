// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get id => throw _privateConstructorUsedError;
  String? get streetSegmentId => throw _privateConstructorUsedError;
  String? get StoreId => throw _privateConstructorUsedError;
  String? get timeStamp => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  double? get avgSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String id,
      String? streetSegmentId,
      String? StoreId,
      String? timeStamp,
      int? count,
      double? avgSpeed});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetSegmentId = freezed,
    Object? StoreId = freezed,
    Object? timeStamp = freezed,
    Object? count = freezed,
    Object? avgSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetSegmentId: freezed == streetSegmentId
          ? _value.streetSegmentId
          : streetSegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      StoreId: freezed == StoreId
          ? _value.StoreId
          : StoreId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      avgSpeed: freezed == avgSpeed
          ? _value.avgSpeed
          : avgSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? streetSegmentId,
      String? StoreId,
      String? timeStamp,
      int? count,
      double? avgSpeed});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetSegmentId = freezed,
    Object? StoreId = freezed,
    Object? timeStamp = freezed,
    Object? count = freezed,
    Object? avgSpeed = freezed,
  }) {
    return _then(_$_Data(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetSegmentId: freezed == streetSegmentId
          ? _value.streetSegmentId
          : streetSegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      StoreId: freezed == StoreId
          ? _value.StoreId
          : StoreId // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      avgSpeed: freezed == avgSpeed
          ? _value.avgSpeed
          : avgSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {required this.id,
      this.streetSegmentId,
      this.StoreId,
      this.timeStamp,
      this.count,
      this.avgSpeed});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String id;
  @override
  final String? streetSegmentId;
  @override
  final String? StoreId;
  @override
  final String? timeStamp;
  @override
  final int? count;
  @override
  final double? avgSpeed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(id: $id, streetSegmentId: $streetSegmentId, StoreId: $StoreId, timeStamp: $timeStamp, count: $count, avgSpeed: $avgSpeed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('streetSegmentId', streetSegmentId))
      ..add(DiagnosticsProperty('StoreId', StoreId))
      ..add(DiagnosticsProperty('timeStamp', timeStamp))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('avgSpeed', avgSpeed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetSegmentId, streetSegmentId) ||
                other.streetSegmentId == streetSegmentId) &&
            (identical(other.StoreId, StoreId) || other.StoreId == StoreId) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.avgSpeed, avgSpeed) ||
                other.avgSpeed == avgSpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, streetSegmentId, StoreId, timeStamp, count, avgSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String id,
      final String? streetSegmentId,
      final String? StoreId,
      final String? timeStamp,
      final int? count,
      final double? avgSpeed}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get id;
  @override
  String? get streetSegmentId;
  @override
  String? get StoreId;
  @override
  String? get timeStamp;
  @override
  int? get count;
  @override
  double? get avgSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
