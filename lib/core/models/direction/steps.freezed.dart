// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'steps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Steps _$StepsFromJson(Map<String, dynamic> json) {
  return _Steps.fromJson(json);
}

/// @nodoc
mixin _$Steps {
  @JsonKey(name: 'distance')
  int? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_point_index')
  int? get startPointIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_point')
  Point? get startPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point_index')
  int? get endPointIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_point')
  Point? get endPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'bounds')
  Bounds? get bounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'maneuver')
  String? get maneuver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepsCopyWith<Steps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsCopyWith<$Res> {
  factory $StepsCopyWith(Steps value, $Res Function(Steps) then) =
      _$StepsCopyWithImpl<$Res, Steps>;
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'start_point_index') int? startPointIndex,
      @JsonKey(name: 'start_point') Point? startPoint,
      @JsonKey(name: 'end_point_index') int? endPointIndex,
      @JsonKey(name: 'end_point') Point? endPoint,
      @JsonKey(name: 'bounds') Bounds? bounds,
      @JsonKey(name: 'maneuver') String? maneuver});

  $PointCopyWith<$Res>? get startPoint;
  $PointCopyWith<$Res>? get endPoint;
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$StepsCopyWithImpl<$Res, $Val extends Steps>
    implements $StepsCopyWith<$Res> {
  _$StepsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? startPointIndex = freezed,
    Object? startPoint = freezed,
    Object? endPointIndex = freezed,
    Object? endPoint = freezed,
    Object? bounds = freezed,
    Object? maneuver = freezed,
  }) {
    return _then(_value.copyWith(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      startPointIndex: freezed == startPointIndex
          ? _value.startPointIndex
          : startPointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startPoint: freezed == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Point?,
      endPointIndex: freezed == endPointIndex
          ? _value.endPointIndex
          : endPointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endPoint: freezed == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Point?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res>? get startPoint {
    if (_value.startPoint == null) {
      return null;
    }

    return $PointCopyWith<$Res>(_value.startPoint!, (value) {
      return _then(_value.copyWith(startPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res>? get endPoint {
    if (_value.endPoint == null) {
      return null;
    }

    return $PointCopyWith<$Res>(_value.endPoint!, (value) {
      return _then(_value.copyWith(endPoint: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StepsCopyWith<$Res> implements $StepsCopyWith<$Res> {
  factory _$$_StepsCopyWith(_$_Steps value, $Res Function(_$_Steps) then) =
      __$$_StepsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'start_point_index') int? startPointIndex,
      @JsonKey(name: 'start_point') Point? startPoint,
      @JsonKey(name: 'end_point_index') int? endPointIndex,
      @JsonKey(name: 'end_point') Point? endPoint,
      @JsonKey(name: 'bounds') Bounds? bounds,
      @JsonKey(name: 'maneuver') String? maneuver});

  @override
  $PointCopyWith<$Res>? get startPoint;
  @override
  $PointCopyWith<$Res>? get endPoint;
  @override
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$$_StepsCopyWithImpl<$Res> extends _$StepsCopyWithImpl<$Res, _$_Steps>
    implements _$$_StepsCopyWith<$Res> {
  __$$_StepsCopyWithImpl(_$_Steps _value, $Res Function(_$_Steps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? startPointIndex = freezed,
    Object? startPoint = freezed,
    Object? endPointIndex = freezed,
    Object? endPoint = freezed,
    Object? bounds = freezed,
    Object? maneuver = freezed,
  }) {
    return _then(_$_Steps(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      startPointIndex: freezed == startPointIndex
          ? _value.startPointIndex
          : startPointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startPoint: freezed == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Point?,
      endPointIndex: freezed == endPointIndex
          ? _value.endPointIndex
          : endPointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      endPoint: freezed == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Point?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      maneuver: freezed == maneuver
          ? _value.maneuver
          : maneuver // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Steps implements _Steps {
  const _$_Steps(
      {@JsonKey(name: 'distance') this.distance,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'start_point_index') this.startPointIndex,
      @JsonKey(name: 'start_point') this.startPoint,
      @JsonKey(name: 'end_point_index') this.endPointIndex,
      @JsonKey(name: 'end_point') this.endPoint,
      @JsonKey(name: 'bounds') this.bounds,
      @JsonKey(name: 'maneuver') this.maneuver});

  factory _$_Steps.fromJson(Map<String, dynamic> json) =>
      _$$_StepsFromJson(json);

  @override
  @JsonKey(name: 'distance')
  final int? distance;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'start_point_index')
  final int? startPointIndex;
  @override
  @JsonKey(name: 'start_point')
  final Point? startPoint;
  @override
  @JsonKey(name: 'end_point_index')
  final int? endPointIndex;
  @override
  @JsonKey(name: 'end_point')
  final Point? endPoint;
  @override
  @JsonKey(name: 'bounds')
  final Bounds? bounds;
  @override
  @JsonKey(name: 'maneuver')
  final String? maneuver;

  @override
  String toString() {
    return 'Steps(distance: $distance, duration: $duration, startPointIndex: $startPointIndex, startPoint: $startPoint, endPointIndex: $endPointIndex, endPoint: $endPoint, bounds: $bounds, maneuver: $maneuver)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Steps &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.startPointIndex, startPointIndex) ||
                other.startPointIndex == startPointIndex) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPointIndex, endPointIndex) ||
                other.endPointIndex == endPointIndex) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.maneuver, maneuver) ||
                other.maneuver == maneuver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration,
      startPointIndex, startPoint, endPointIndex, endPoint, bounds, maneuver);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepsCopyWith<_$_Steps> get copyWith =>
      __$$_StepsCopyWithImpl<_$_Steps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepsToJson(
      this,
    );
  }
}

abstract class _Steps implements Steps {
  const factory _Steps(
      {@JsonKey(name: 'distance') final int? distance,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'start_point_index') final int? startPointIndex,
      @JsonKey(name: 'start_point') final Point? startPoint,
      @JsonKey(name: 'end_point_index') final int? endPointIndex,
      @JsonKey(name: 'end_point') final Point? endPoint,
      @JsonKey(name: 'bounds') final Bounds? bounds,
      @JsonKey(name: 'maneuver') final String? maneuver}) = _$_Steps;

  factory _Steps.fromJson(Map<String, dynamic> json) = _$_Steps.fromJson;

  @override
  @JsonKey(name: 'distance')
  int? get distance;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'start_point_index')
  int? get startPointIndex;
  @override
  @JsonKey(name: 'start_point')
  Point? get startPoint;
  @override
  @JsonKey(name: 'end_point_index')
  int? get endPointIndex;
  @override
  @JsonKey(name: 'end_point')
  Point? get endPoint;
  @override
  @JsonKey(name: 'bounds')
  Bounds? get bounds;
  @override
  @JsonKey(name: 'maneuver')
  String? get maneuver;
  @override
  @JsonKey(ignore: true)
  _$$_StepsCopyWith<_$_Steps> get copyWith =>
      throw _privateConstructorUsedError;
}
