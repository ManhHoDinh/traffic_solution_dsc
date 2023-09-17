// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ward _$WardFromJson(Map<String, dynamic> json) {
  return _Ward.fromJson(json);
}

/// @nodoc
mixin _$Ward {
  @JsonKey(name: 'district_id')
  String? get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ward_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ward_name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WardCopyWith<Ward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardCopyWith<$Res> {
  factory $WardCopyWith(Ward value, $Res Function(Ward) then) =
      _$WardCopyWithImpl<$Res, Ward>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'ward_id') String? id,
      @JsonKey(name: 'ward_name') String? name});
}

/// @nodoc
class _$WardCopyWithImpl<$Res, $Val extends Ward>
    implements $WardCopyWith<$Res> {
  _$WardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WardCopyWith<$Res> implements $WardCopyWith<$Res> {
  factory _$$_WardCopyWith(_$_Ward value, $Res Function(_$_Ward) then) =
      __$$_WardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district_id') String? districtId,
      @JsonKey(name: 'ward_id') String? id,
      @JsonKey(name: 'ward_name') String? name});
}

/// @nodoc
class __$$_WardCopyWithImpl<$Res> extends _$WardCopyWithImpl<$Res, _$_Ward>
    implements _$$_WardCopyWith<$Res> {
  __$$_WardCopyWithImpl(_$_Ward _value, $Res Function(_$_Ward) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? districtId = freezed,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Ward(
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ward with DiagnosticableTreeMixin implements _Ward {
  const _$_Ward(
      {@JsonKey(name: 'district_id') this.districtId,
      @JsonKey(name: 'ward_id') this.id,
      @JsonKey(name: 'ward_name') this.name});

  factory _$_Ward.fromJson(Map<String, dynamic> json) => _$$_WardFromJson(json);

  @override
  @JsonKey(name: 'district_id')
  final String? districtId;
  @override
  @JsonKey(name: 'ward_id')
  final String? id;
  @override
  @JsonKey(name: 'ward_name')
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ward(districtId: $districtId, id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ward'))
      ..add(DiagnosticsProperty('districtId', districtId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ward &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, districtId, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WardCopyWith<_$_Ward> get copyWith =>
      __$$_WardCopyWithImpl<_$_Ward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WardToJson(
      this,
    );
  }
}

abstract class _Ward implements Ward {
  const factory _Ward(
      {@JsonKey(name: 'district_id') final String? districtId,
      @JsonKey(name: 'ward_id') final String? id,
      @JsonKey(name: 'ward_name') final String? name}) = _$_Ward;

  factory _Ward.fromJson(Map<String, dynamic> json) = _$_Ward.fromJson;

  @override
  @JsonKey(name: 'district_id')
  String? get districtId;
  @override
  @JsonKey(name: 'ward_id')
  String? get id;
  @override
  @JsonKey(name: 'ward_name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_WardCopyWith<_$_Ward> get copyWith => throw _privateConstructorUsedError;
}
