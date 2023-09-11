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
  String get id => throw _privateConstructorUsedError;
  String? get districId => throw _privateConstructorUsedError;
  String? get Name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WardCopyWith<Ward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WardCopyWith<$Res> {
  factory $WardCopyWith(Ward value, $Res Function(Ward) then) =
      _$WardCopyWithImpl<$Res, Ward>;
  @useResult
  $Res call({String id, String? districId, String? Name});
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
    Object? id = null,
    Object? districId = freezed,
    Object? Name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      districId: freezed == districId
          ? _value.districId
          : districId // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
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
  $Res call({String id, String? districId, String? Name});
}

/// @nodoc
class __$$_WardCopyWithImpl<$Res> extends _$WardCopyWithImpl<$Res, _$_Ward>
    implements _$$_WardCopyWith<$Res> {
  __$$_WardCopyWithImpl(_$_Ward _value, $Res Function(_$_Ward) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? districId = freezed,
    Object? Name = freezed,
  }) {
    return _then(_$_Ward(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      districId: freezed == districId
          ? _value.districId
          : districId // ignore: cast_nullable_to_non_nullable
              as String?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ward with DiagnosticableTreeMixin implements _Ward {
  const _$_Ward({required this.id, this.districId, this.Name});

  factory _$_Ward.fromJson(Map<String, dynamic> json) => _$$_WardFromJson(json);

  @override
  final String id;
  @override
  final String? districId;
  @override
  final String? Name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ward(id: $id, districId: $districId, Name: $Name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ward'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('districId', districId))
      ..add(DiagnosticsProperty('Name', Name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ward &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.districId, districId) ||
                other.districId == districId) &&
            (identical(other.Name, Name) || other.Name == Name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, districId, Name);

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
      {required final String id,
      final String? districId,
      final String? Name}) = _$_Ward;

  factory _Ward.fromJson(Map<String, dynamic> json) = _$_Ward.fromJson;

  @override
  String get id;
  @override
  String? get districId;
  @override
  String? get Name;
  @override
  @JsonKey(ignore: true)
  _$$_WardCopyWith<_$_Ward> get copyWith => throw _privateConstructorUsedError;
}
