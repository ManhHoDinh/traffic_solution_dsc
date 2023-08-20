// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  String get id => throw _privateConstructorUsedError;
  String? get businessId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get LocationX => throw _privateConstructorUsedError;
  int? get LocationY => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String id,
      String? businessId,
      String? name,
      String? LocationX,
      int? LocationY,
      String? status});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = freezed,
    Object? name = freezed,
    Object? LocationX = freezed,
    Object? LocationY = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      LocationX: freezed == LocationX
          ? _value.LocationX
          : LocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      LocationY: freezed == LocationY
          ? _value.LocationY
          : LocationY // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$_StoreCopyWith(_$_Store value, $Res Function(_$_Store) then) =
      __$$_StoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? businessId,
      String? name,
      String? LocationX,
      int? LocationY,
      String? status});
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res, _$_Store>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = freezed,
    Object? name = freezed,
    Object? LocationX = freezed,
    Object? LocationY = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Store(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      LocationX: freezed == LocationX
          ? _value.LocationX
          : LocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      LocationY: freezed == LocationY
          ? _value.LocationY
          : LocationY // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store with DiagnosticableTreeMixin implements _Store {
  const _$_Store(
      {required this.id,
      this.businessId,
      this.name,
      this.LocationX,
      this.LocationY,
      this.status});

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final String id;
  @override
  final String? businessId;
  @override
  final String? name;
  @override
  final String? LocationX;
  @override
  final int? LocationY;
  @override
  final String? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Store(id: $id, businessId: $businessId, name: $name, LocationX: $LocationX, LocationY: $LocationY, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Store'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('businessId', businessId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('LocationX', LocationX))
      ..add(DiagnosticsProperty('LocationY', LocationY))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.LocationX, LocationX) ||
                other.LocationX == LocationX) &&
            (identical(other.LocationY, LocationY) ||
                other.LocationY == LocationY) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, businessId, name, LocationX, LocationY, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      __$$_StoreCopyWithImpl<_$_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {required final String id,
      final String? businessId,
      final String? name,
      final String? LocationX,
      final int? LocationY,
      final String? status}) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  String get id;
  @override
  String? get businessId;
  @override
  String? get name;
  @override
  String? get LocationX;
  @override
  int? get LocationY;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}
