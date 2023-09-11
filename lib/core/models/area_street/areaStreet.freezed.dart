// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'areaStreet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AreaStreet _$AreaStreetFromJson(Map<String, dynamic> json) {
  return _AreaStreet.fromJson(json);
}

/// @nodoc
mixin _$AreaStreet {
  String get id => throw _privateConstructorUsedError;
  String? get streetId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaStreetCopyWith<AreaStreet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaStreetCopyWith<$Res> {
  factory $AreaStreetCopyWith(
          AreaStreet value, $Res Function(AreaStreet) then) =
      _$AreaStreetCopyWithImpl<$Res, AreaStreet>;
  @useResult
  $Res call({String id, String? streetId});
}

/// @nodoc
class _$AreaStreetCopyWithImpl<$Res, $Val extends AreaStreet>
    implements $AreaStreetCopyWith<$Res> {
  _$AreaStreetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaStreetCopyWith<$Res>
    implements $AreaStreetCopyWith<$Res> {
  factory _$$_AreaStreetCopyWith(
          _$_AreaStreet value, $Res Function(_$_AreaStreet) then) =
      __$$_AreaStreetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? streetId});
}

/// @nodoc
class __$$_AreaStreetCopyWithImpl<$Res>
    extends _$AreaStreetCopyWithImpl<$Res, _$_AreaStreet>
    implements _$$_AreaStreetCopyWith<$Res> {
  __$$_AreaStreetCopyWithImpl(
      _$_AreaStreet _value, $Res Function(_$_AreaStreet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetId = freezed,
  }) {
    return _then(_$_AreaStreet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AreaStreet with DiagnosticableTreeMixin implements _AreaStreet {
  const _$_AreaStreet({required this.id, this.streetId});

  factory _$_AreaStreet.fromJson(Map<String, dynamic> json) =>
      _$$_AreaStreetFromJson(json);

  @override
  final String id;
  @override
  final String? streetId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AreaStreet(id: $id, streetId: $streetId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AreaStreet'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('streetId', streetId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AreaStreet &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaStreetCopyWith<_$_AreaStreet> get copyWith =>
      __$$_AreaStreetCopyWithImpl<_$_AreaStreet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaStreetToJson(
      this,
    );
  }
}

abstract class _AreaStreet implements AreaStreet {
  const factory _AreaStreet(
      {required final String id, final String? streetId}) = _$_AreaStreet;

  factory _AreaStreet.fromJson(Map<String, dynamic> json) =
      _$_AreaStreet.fromJson;

  @override
  String get id;
  @override
  String? get streetId;
  @override
  @JsonKey(ignore: true)
  _$$_AreaStreetCopyWith<_$_AreaStreet> get copyWith =>
      throw _privateConstructorUsedError;
}
