// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  @JsonKey(name: 'area_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ward_id')
  String? get ward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') String? id,
      @JsonKey(name: 'area_name') String? name,
      @JsonKey(name: 'ward_id') String? ward});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ward = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$_AreaCopyWith(_$_Area value, $Res Function(_$_Area) then) =
      __$$_AreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'area_id') String? id,
      @JsonKey(name: 'area_name') String? name,
      @JsonKey(name: 'ward_id') String? ward});
}

/// @nodoc
class __$$_AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res, _$_Area>
    implements _$$_AreaCopyWith<$Res> {
  __$$_AreaCopyWithImpl(_$_Area _value, $Res Function(_$_Area) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ward = freezed,
  }) {
    return _then(_$_Area(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ward: freezed == ward
          ? _value.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Area with DiagnosticableTreeMixin implements _Area {
  const _$_Area(
      {@JsonKey(name: 'area_id') this.id,
      @JsonKey(name: 'area_name') this.name,
      @JsonKey(name: 'ward_id') this.ward});

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  @JsonKey(name: 'area_id')
  final String? id;
  @override
  @JsonKey(name: 'area_name')
  final String? name;
  @override
  @JsonKey(name: 'ward_id')
  final String? ward;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Area(id: $id, name: $name, ward: $ward)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Area'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('ward', ward));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Area &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ward, ward) || other.ward == ward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, ward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaCopyWith<_$_Area> get copyWith =>
      __$$_AreaCopyWithImpl<_$_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {@JsonKey(name: 'area_id') final String? id,
      @JsonKey(name: 'area_name') final String? name,
      @JsonKey(name: 'ward_id') final String? ward}) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  @JsonKey(name: 'area_id')
  String? get id;
  @override
  @JsonKey(name: 'area_name')
  String? get name;
  @override
  @JsonKey(name: 'ward_id')
  String? get ward;
  @override
  @JsonKey(ignore: true)
  _$$_AreaCopyWith<_$_Area> get copyWith => throw _privateConstructorUsedError;
}
