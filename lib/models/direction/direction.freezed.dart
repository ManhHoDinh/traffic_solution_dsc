// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Direction _$DirectionFromJson(Map<String, dynamic> json) {
  return _Direction.fromJson(json);
}

/// @nodoc
mixin _$Direction {
  @JsonKey(name: 'route')
  Route? get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DirectionCopyWith<Direction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionCopyWith<$Res> {
  factory $DirectionCopyWith(Direction value, $Res Function(Direction) then) =
      _$DirectionCopyWithImpl<$Res, Direction>;
  @useResult
  $Res call({@JsonKey(name: 'route') Route? route});

  $RouteCopyWith<$Res>? get route;
}

/// @nodoc
class _$DirectionCopyWithImpl<$Res, $Val extends Direction>
    implements $DirectionCopyWith<$Res> {
  _$DirectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RouteCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $RouteCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DirectionCopyWith<$Res> implements $DirectionCopyWith<$Res> {
  factory _$$_DirectionCopyWith(
          _$_Direction value, $Res Function(_$_Direction) then) =
      __$$_DirectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'route') Route? route});

  @override
  $RouteCopyWith<$Res>? get route;
}

/// @nodoc
class __$$_DirectionCopyWithImpl<$Res>
    extends _$DirectionCopyWithImpl<$Res, _$_Direction>
    implements _$$_DirectionCopyWith<$Res> {
  __$$_DirectionCopyWithImpl(
      _$_Direction _value, $Res Function(_$_Direction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
  }) {
    return _then(_$_Direction(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Direction implements _Direction {
  const _$_Direction({@JsonKey(name: 'route') this.route});

  factory _$_Direction.fromJson(Map<String, dynamic> json) =>
      _$$_DirectionFromJson(json);

  @override
  @JsonKey(name: 'route')
  final Route? route;

  @override
  String toString() {
    return 'Direction(route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Direction &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DirectionCopyWith<_$_Direction> get copyWith =>
      __$$_DirectionCopyWithImpl<_$_Direction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DirectionToJson(
      this,
    );
  }
}

abstract class _Direction implements Direction {
  const factory _Direction({@JsonKey(name: 'route') final Route? route}) =
      _$_Direction;

  factory _Direction.fromJson(Map<String, dynamic> json) =
      _$_Direction.fromJson;

  @override
  @JsonKey(name: 'route')
  Route? get route;
  @override
  @JsonKey(ignore: true)
  _$$_DirectionCopyWith<_$_Direction> get copyWith =>
      throw _privateConstructorUsedError;
}
