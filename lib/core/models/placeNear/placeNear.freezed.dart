// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placeNear.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceNear _$PlaceNearFromJson(Map<String, dynamic> json) {
  return _PlaceNear.fromJson(json);
}

/// @nodoc
mixin _$PlaceNear {
  @JsonKey(name: 'results')
  List<Results>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceNearCopyWith<PlaceNear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceNearCopyWith<$Res> {
  factory $PlaceNearCopyWith(PlaceNear value, $Res Function(PlaceNear) then) =
      _$PlaceNearCopyWithImpl<$Res, PlaceNear>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Results>? results});
}

/// @nodoc
class _$PlaceNearCopyWithImpl<$Res, $Val extends PlaceNear>
    implements $PlaceNearCopyWith<$Res> {
  _$PlaceNearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceNearCopyWith<$Res> implements $PlaceNearCopyWith<$Res> {
  factory _$$_PlaceNearCopyWith(
          _$_PlaceNear value, $Res Function(_$_PlaceNear) then) =
      __$$_PlaceNearCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Results>? results});
}

/// @nodoc
class __$$_PlaceNearCopyWithImpl<$Res>
    extends _$PlaceNearCopyWithImpl<$Res, _$_PlaceNear>
    implements _$$_PlaceNearCopyWith<$Res> {
  __$$_PlaceNearCopyWithImpl(
      _$_PlaceNear _value, $Res Function(_$_PlaceNear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_PlaceNear(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceNear with DiagnosticableTreeMixin implements _PlaceNear {
  const _$_PlaceNear({@JsonKey(name: 'results') final List<Results>? results})
      : _results = results;

  factory _$_PlaceNear.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceNearFromJson(json);

  final List<Results>? _results;
  @override
  @JsonKey(name: 'results')
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlaceNear(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlaceNear'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceNear &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceNearCopyWith<_$_PlaceNear> get copyWith =>
      __$$_PlaceNearCopyWithImpl<_$_PlaceNear>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceNearToJson(
      this,
    );
  }
}

abstract class _PlaceNear implements PlaceNear {
  const factory _PlaceNear(
      {@JsonKey(name: 'results') final List<Results>? results}) = _$_PlaceNear;

  factory _PlaceNear.fromJson(Map<String, dynamic> json) =
      _$_PlaceNear.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Results>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceNearCopyWith<_$_PlaceNear> get copyWith =>
      throw _privateConstructorUsedError;
}
