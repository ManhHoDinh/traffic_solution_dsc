// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  @JsonKey(name: 'business_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {@JsonKey(name: 'business_id') String? id,
      @JsonKey(name: 'business_name') String? name,
      @JsonKey(name: 'business_type') String? type});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'business_id') String? id,
      @JsonKey(name: 'business_name') String? name,
      @JsonKey(name: 'business_type') String? type});
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$_Business>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Business(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business with DiagnosticableTreeMixin implements _Business {
  const _$_Business(
      {@JsonKey(name: 'business_id') this.id,
      @JsonKey(name: 'business_name') this.name,
      @JsonKey(name: 'business_type') this.type});

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  @JsonKey(name: 'business_id')
  final String? id;
  @override
  @JsonKey(name: 'business_name')
  final String? name;
  @override
  @JsonKey(name: 'business_type')
  final String? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Business(id: $id, name: $name, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Business'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      {@JsonKey(name: 'business_id') final String? id,
      @JsonKey(name: 'business_name') final String? name,
      @JsonKey(name: 'business_type') final String? type}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  @JsonKey(name: 'business_id')
  String? get id;
  @override
  @JsonKey(name: 'business_name')
  String? get name;
  @override
  @JsonKey(name: 'business_type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
