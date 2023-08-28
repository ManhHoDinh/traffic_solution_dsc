// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'legs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Legs _$LegsFromJson(Map<String, dynamic> json) {
  return _Legs.fromJson(json);
}

/// @nodoc
mixin _$Legs {
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
  @JsonKey(name: 'steps')
  List<Steps>? get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegsCopyWith<Legs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegsCopyWith<$Res> {
  factory $LegsCopyWith(Legs value, $Res Function(Legs) then) =
      _$LegsCopyWithImpl<$Res, Legs>;
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'start_point_index') int? startPointIndex,
      @JsonKey(name: 'start_point') Point? startPoint,
      @JsonKey(name: 'end_point_index') int? endPointIndex,
      @JsonKey(name: 'end_point') Point? endPoint,
      @JsonKey(name: 'bounds') Bounds? bounds,
      @JsonKey(name: 'steps') List<Steps>? steps});

  $PointCopyWith<$Res>? get startPoint;
  $PointCopyWith<$Res>? get endPoint;
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class _$LegsCopyWithImpl<$Res, $Val extends Legs>
    implements $LegsCopyWith<$Res> {
  _$LegsCopyWithImpl(this._value, this._then);

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
    Object? steps = freezed,
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
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Steps>?,
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
abstract class _$$_LegsCopyWith<$Res> implements $LegsCopyWith<$Res> {
  factory _$$_LegsCopyWith(_$_Legs value, $Res Function(_$_Legs) then) =
      __$$_LegsCopyWithImpl<$Res>;
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
      @JsonKey(name: 'steps') List<Steps>? steps});

  @override
  $PointCopyWith<$Res>? get startPoint;
  @override
  $PointCopyWith<$Res>? get endPoint;
  @override
  $BoundsCopyWith<$Res>? get bounds;
}

/// @nodoc
class __$$_LegsCopyWithImpl<$Res> extends _$LegsCopyWithImpl<$Res, _$_Legs>
    implements _$$_LegsCopyWith<$Res> {
  __$$_LegsCopyWithImpl(_$_Legs _value, $Res Function(_$_Legs) _then)
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
    Object? steps = freezed,
  }) {
    return _then(_$_Legs(
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
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Steps>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Legs implements _Legs {
  const _$_Legs(
      {@JsonKey(name: 'distance') this.distance,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'start_point_index') this.startPointIndex,
      @JsonKey(name: 'start_point') this.startPoint,
      @JsonKey(name: 'end_point_index') this.endPointIndex,
      @JsonKey(name: 'end_point') this.endPoint,
      @JsonKey(name: 'bounds') this.bounds,
      @JsonKey(name: 'steps') final List<Steps>? steps})
      : _steps = steps;

  factory _$_Legs.fromJson(Map<String, dynamic> json) => _$$_LegsFromJson(json);

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
  final List<Steps>? _steps;
  @override
  @JsonKey(name: 'steps')
  List<Steps>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Legs(distance: $distance, duration: $duration, startPointIndex: $startPointIndex, startPoint: $startPoint, endPointIndex: $endPointIndex, endPoint: $endPoint, bounds: $bounds, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Legs &&
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
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      distance,
      duration,
      startPointIndex,
      startPoint,
      endPointIndex,
      endPoint,
      bounds,
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LegsCopyWith<_$_Legs> get copyWith =>
      __$$_LegsCopyWithImpl<_$_Legs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LegsToJson(
      this,
    );
  }
}

abstract class _Legs implements Legs {
  const factory _Legs(
      {@JsonKey(name: 'distance') final int? distance,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'start_point_index') final int? startPointIndex,
      @JsonKey(name: 'start_point') final Point? startPoint,
      @JsonKey(name: 'end_point_index') final int? endPointIndex,
      @JsonKey(name: 'end_point') final Point? endPoint,
      @JsonKey(name: 'bounds') final Bounds? bounds,
      @JsonKey(name: 'steps') final List<Steps>? steps}) = _$_Legs;

  factory _Legs.fromJson(Map<String, dynamic> json) = _$_Legs.fromJson;

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
  @JsonKey(name: 'steps')
  List<Steps>? get steps;
  @override
  @JsonKey(ignore: true)
  _$$_LegsCopyWith<_$_Legs> get copyWith => throw _privateConstructorUsedError;
}
