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
  @JsonKey(name: 'business_id')
  String? get businessId => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'business_id') String? businessId,
      @JsonKey(name: 'store_id') String? id,
      @JsonKey(name: 'store_latitude') double? latitude,
      @JsonKey(name: 'store_longitude') double? longitude,
      @JsonKey(name: 'store_name') String? name,
      @JsonKey(name: 'store_status') bool? status,
      @JsonKey(name: 'address') String? address});
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
    Object? businessId = freezed,
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'business_id') String? businessId,
      @JsonKey(name: 'store_id') String? id,
      @JsonKey(name: 'store_latitude') double? latitude,
      @JsonKey(name: 'store_longitude') double? longitude,
      @JsonKey(name: 'store_name') String? name,
      @JsonKey(name: 'store_status') bool? status,
      @JsonKey(name: 'address') String? address});
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res, _$_Store>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessId = freezed,
    Object? id = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Store(
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store with DiagnosticableTreeMixin implements _Store {
  const _$_Store(
      {@JsonKey(name: 'business_id') this.businessId,
      @JsonKey(name: 'store_id') this.id,
      @JsonKey(name: 'store_latitude') this.latitude,
      @JsonKey(name: 'store_longitude') this.longitude,
      @JsonKey(name: 'store_name') this.name,
      @JsonKey(name: 'store_status') this.status,
      @JsonKey(name: 'address') this.address});

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  @JsonKey(name: 'business_id')
  final String? businessId;
  @override
  @JsonKey(name: 'store_id')
  final String? id;
  @override
  @JsonKey(name: 'store_latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'store_longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'store_name')
  final String? name;
  @override
  @JsonKey(name: 'store_status')
  final bool? status;
  @override
  @JsonKey(name: 'address')
  final String? address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Store(businessId: $businessId, id: $id, latitude: $latitude, longitude: $longitude, name: $name, status: $status, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Store'))
      ..add(DiagnosticsProperty('businessId', businessId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, businessId, id, latitude, longitude, name, status, address);

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
      {@JsonKey(name: 'business_id') final String? businessId,
      @JsonKey(name: 'store_id') final String? id,
      @JsonKey(name: 'store_latitude') final double? latitude,
      @JsonKey(name: 'store_longitude') final double? longitude,
      @JsonKey(name: 'store_name') final String? name,
      @JsonKey(name: 'store_status') final bool? status,
      @JsonKey(name: 'address') final String? address}) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  @JsonKey(name: 'business_id')
  String? get businessId;
  @override
  @JsonKey(name: 'store_id')
  String? get id;
  @override
  @JsonKey(name: 'store_latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'store_longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'store_name')
  String? get name;
  @override
  @JsonKey(name: 'store_status')
  bool? get status;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}
