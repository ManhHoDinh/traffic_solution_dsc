// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Street _$StreetFromJson(Map<String, dynamic> json) {
  return _Street.fromJson(json);
}

/// @nodoc
mixin _$Street {
  String get id => throw _privateConstructorUsedError;
  String? get streetName => throw _privateConstructorUsedError;
  String? get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreetCopyWith<Street> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetCopyWith<$Res> {
  factory $StreetCopyWith(Street value, $Res Function(Street) then) =
      _$StreetCopyWithImpl<$Res, Street>;
  @useResult
  $Res call({String id, String? streetName, String? areaId});
}

/// @nodoc
class _$StreetCopyWithImpl<$Res, $Val extends Street>
    implements $StreetCopyWith<$Res> {
  _$StreetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetName = freezed,
    Object? areaId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreetCopyWith<$Res> implements $StreetCopyWith<$Res> {
  factory _$$_StreetCopyWith(_$_Street value, $Res Function(_$_Street) then) =
      __$$_StreetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? streetName, String? areaId});
}

/// @nodoc
class __$$_StreetCopyWithImpl<$Res>
    extends _$StreetCopyWithImpl<$Res, _$_Street>
    implements _$$_StreetCopyWith<$Res> {
  __$$_StreetCopyWithImpl(_$_Street _value, $Res Function(_$_Street) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetName = freezed,
    Object? areaId = freezed,
  }) {
    return _then(_$_Street(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Street with DiagnosticableTreeMixin implements _Street {
  const _$_Street({required this.id, this.streetName, this.areaId});

  factory _$_Street.fromJson(Map<String, dynamic> json) =>
      _$$_StreetFromJson(json);

  @override
  final String id;
  @override
  final String? streetName;
  @override
  final String? areaId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Street(id: $id, streetName: $streetName, areaId: $areaId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Street'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('streetName', streetName))
      ..add(DiagnosticsProperty('areaId', areaId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Street &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetName, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreetCopyWith<_$_Street> get copyWith =>
      __$$_StreetCopyWithImpl<_$_Street>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreetToJson(
      this,
    );
  }
}

abstract class _Street implements Street {
  const factory _Street(
      {required final String id,
      final String? streetName,
      final String? areaId}) = _$_Street;

  factory _Street.fromJson(Map<String, dynamic> json) = _$_Street.fromJson;

  @override
  String get id;
  @override
  String? get streetName;
  @override
  String? get areaId;
  @override
  @JsonKey(ignore: true)
  _$$_StreetCopyWith<_$_Street> get copyWith =>
      throw _privateConstructorUsedError;
}
