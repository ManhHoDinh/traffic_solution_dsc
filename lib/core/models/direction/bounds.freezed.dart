// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bounds _$BoundsFromJson(Map<String, dynamic> json) {
  return _Bounds.fromJson(json);
}

/// @nodoc
mixin _$Bounds {
  @JsonKey(name: 'south')
  double? get south => throw _privateConstructorUsedError;
  @JsonKey(name: 'west')
  double? get west => throw _privateConstructorUsedError;
  @JsonKey(name: 'north')
  double? get north => throw _privateConstructorUsedError;
  @JsonKey(name: 'east')
  double? get east => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundsCopyWith<Bounds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsCopyWith<$Res> {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) then) =
      _$BoundsCopyWithImpl<$Res, Bounds>;
  @useResult
  $Res call(
      {@JsonKey(name: 'south') double? south,
      @JsonKey(name: 'west') double? west,
      @JsonKey(name: 'north') double? north,
      @JsonKey(name: 'east') double? east});
}

/// @nodoc
class _$BoundsCopyWithImpl<$Res, $Val extends Bounds>
    implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? south = freezed,
    Object? west = freezed,
    Object? north = freezed,
    Object? east = freezed,
  }) {
    return _then(_value.copyWith(
      south: freezed == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as double?,
      west: freezed == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as double?,
      north: freezed == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as double?,
      east: freezed == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$$_BoundsCopyWith(_$_Bounds value, $Res Function(_$_Bounds) then) =
      __$$_BoundsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'south') double? south,
      @JsonKey(name: 'west') double? west,
      @JsonKey(name: 'north') double? north,
      @JsonKey(name: 'east') double? east});
}

/// @nodoc
class __$$_BoundsCopyWithImpl<$Res>
    extends _$BoundsCopyWithImpl<$Res, _$_Bounds>
    implements _$$_BoundsCopyWith<$Res> {
  __$$_BoundsCopyWithImpl(_$_Bounds _value, $Res Function(_$_Bounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? south = freezed,
    Object? west = freezed,
    Object? north = freezed,
    Object? east = freezed,
  }) {
    return _then(_$_Bounds(
      south: freezed == south
          ? _value.south
          : south // ignore: cast_nullable_to_non_nullable
              as double?,
      west: freezed == west
          ? _value.west
          : west // ignore: cast_nullable_to_non_nullable
              as double?,
      north: freezed == north
          ? _value.north
          : north // ignore: cast_nullable_to_non_nullable
              as double?,
      east: freezed == east
          ? _value.east
          : east // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bounds implements _Bounds {
  const _$_Bounds(
      {@JsonKey(name: 'south') this.south,
      @JsonKey(name: 'west') this.west,
      @JsonKey(name: 'north') this.north,
      @JsonKey(name: 'east') this.east});

  factory _$_Bounds.fromJson(Map<String, dynamic> json) =>
      _$$_BoundsFromJson(json);

  @override
  @JsonKey(name: 'south')
  final double? south;
  @override
  @JsonKey(name: 'west')
  final double? west;
  @override
  @JsonKey(name: 'north')
  final double? north;
  @override
  @JsonKey(name: 'east')
  final double? east;

  @override
  String toString() {
    return 'Bounds(south: $south, west: $west, north: $north, east: $east)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bounds &&
            (identical(other.south, south) || other.south == south) &&
            (identical(other.west, west) || other.west == west) &&
            (identical(other.north, north) || other.north == north) &&
            (identical(other.east, east) || other.east == east));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, south, west, north, east);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      __$$_BoundsCopyWithImpl<_$_Bounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoundsToJson(
      this,
    );
  }
}

abstract class _Bounds implements Bounds {
  const factory _Bounds(
      {@JsonKey(name: 'south') final double? south,
      @JsonKey(name: 'west') final double? west,
      @JsonKey(name: 'north') final double? north,
      @JsonKey(name: 'east') final double? east}) = _$_Bounds;

  factory _Bounds.fromJson(Map<String, dynamic> json) = _$_Bounds.fromJson;

  @override
  @JsonKey(name: 'south')
  double? get south;
  @override
  @JsonKey(name: 'west')
  double? get west;
  @override
  @JsonKey(name: 'north')
  double? get north;
  @override
  @JsonKey(name: 'east')
  double? get east;
  @override
  @JsonKey(ignore: true)
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      throw _privateConstructorUsedError;
}
