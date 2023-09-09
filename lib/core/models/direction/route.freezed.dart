// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  @JsonKey(name: 'distance')
  int? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'bounds')
  Bounds? get bounds => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry')
  Geometry? get geometry => throw _privateConstructorUsedError;
  @JsonKey(name: 'legs')
  List<Legs>? get legs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'bounds') Bounds? bounds,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'legs') List<Legs>? legs});

  $BoundsCopyWith<$Res>? get bounds;
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? bounds = freezed,
    Object? geometry = freezed,
    Object? legs = freezed,
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
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Legs>?,
    ) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$_RouteCopyWith(_$_Route value, $Res Function(_$_Route) then) =
      __$$_RouteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'distance') int? distance,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'bounds') Bounds? bounds,
      @JsonKey(name: 'geometry') Geometry? geometry,
      @JsonKey(name: 'legs') List<Legs>? legs});

  @override
  $BoundsCopyWith<$Res>? get bounds;
  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res, _$_Route>
    implements _$$_RouteCopyWith<$Res> {
  __$$_RouteCopyWithImpl(_$_Route _value, $Res Function(_$_Route) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = freezed,
    Object? duration = freezed,
    Object? bounds = freezed,
    Object? geometry = freezed,
    Object? legs = freezed,
  }) {
    return _then(_$_Route(
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
      legs: freezed == legs
          ? _value._legs
          : legs // ignore: cast_nullable_to_non_nullable
              as List<Legs>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route implements _Route {
  const _$_Route(
      {@JsonKey(name: 'distance') this.distance,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'bounds') this.bounds,
      @JsonKey(name: 'geometry') this.geometry,
      @JsonKey(name: 'legs') final List<Legs>? legs})
      : _legs = legs;

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFromJson(json);

  @override
  @JsonKey(name: 'distance')
  final int? distance;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'bounds')
  final Bounds? bounds;
  @override
  @JsonKey(name: 'geometry')
  final Geometry? geometry;
  final List<Legs>? _legs;
  @override
  @JsonKey(name: 'legs')
  List<Legs>? get legs {
    final value = _legs;
    if (value == null) return null;
    if (_legs is EqualUnmodifiableListView) return _legs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Route(distance: $distance, duration: $duration, bounds: $bounds, geometry: $geometry, legs: $legs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Route &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            const DeepCollectionEquality().equals(other._legs, _legs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration, bounds,
      geometry, const DeepCollectionEquality().hash(_legs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      __$$_RouteCopyWithImpl<_$_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RouteToJson(
      this,
    );
  }
}

abstract class _Route implements Route {
  const factory _Route(
      {@JsonKey(name: 'distance') final int? distance,
      @JsonKey(name: 'duration') final int? duration,
      @JsonKey(name: 'bounds') final Bounds? bounds,
      @JsonKey(name: 'geometry') final Geometry? geometry,
      @JsonKey(name: 'legs') final List<Legs>? legs}) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  @JsonKey(name: 'distance')
  int? get distance;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'bounds')
  Bounds? get bounds;
  @override
  @JsonKey(name: 'geometry')
  Geometry? get geometry;
  @override
  @JsonKey(name: 'legs')
  List<Legs>? get legs;
  @override
  @JsonKey(ignore: true)
  _$$_RouteCopyWith<_$_Route> get copyWith =>
      throw _privateConstructorUsedError;
}
