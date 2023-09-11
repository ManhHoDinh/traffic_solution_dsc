// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStateData {
  StatusType? get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  CameraPosition? get locationSelectedCamera =>
      throw _privateConstructorUsedError;
  PlaceNear? get locationSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDataCopyWith<$Res> {
  factory $HomeStateDataCopyWith(
          HomeStateData value, $Res Function(HomeStateData) then) =
      _$HomeStateDataCopyWithImpl<$Res, HomeStateData>;
  @useResult
  $Res call(
      {StatusType? status,
      String? error,
      CameraPosition? locationSelectedCamera,
      PlaceNear? locationSelected});

  $PlaceNearCopyWith<$Res>? get locationSelected;
}

/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res, $Val extends HomeStateData>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? locationSelectedCamera = freezed,
    Object? locationSelected = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelectedCamera: freezed == locationSelectedCamera
          ? _value.locationSelectedCamera
          : locationSelectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      locationSelected: freezed == locationSelected
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as PlaceNear?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceNearCopyWith<$Res>? get locationSelected {
    if (_value.locationSelected == null) {
      return null;
    }

    return $PlaceNearCopyWith<$Res>(_value.locationSelected!, (value) {
      return _then(_value.copyWith(locationSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateDataCopyWith<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  factory _$$_HomeStateDataCopyWith(
          _$_HomeStateData value, $Res Function(_$_HomeStateData) then) =
      __$$_HomeStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType? status,
      String? error,
      CameraPosition? locationSelectedCamera,
      PlaceNear? locationSelected});

  @override
  $PlaceNearCopyWith<$Res>? get locationSelected;
}

/// @nodoc
class __$$_HomeStateDataCopyWithImpl<$Res>
    extends _$HomeStateDataCopyWithImpl<$Res, _$_HomeStateData>
    implements _$$_HomeStateDataCopyWith<$Res> {
  __$$_HomeStateDataCopyWithImpl(
      _$_HomeStateData _value, $Res Function(_$_HomeStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? locationSelectedCamera = freezed,
    Object? locationSelected = freezed,
  }) {
    return _then(_$_HomeStateData(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelectedCamera: freezed == locationSelectedCamera
          ? _value.locationSelectedCamera
          : locationSelectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraPosition?,
      locationSelected: freezed == locationSelected
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as PlaceNear?,
    ));
  }
}

/// @nodoc

class _$_HomeStateData implements _HomeStateData {
  const _$_HomeStateData(
      {this.status = StatusType.init,
      this.error = '',
      this.locationSelectedCamera = const CameraPosition(target: LatLng(0, 0)),
      this.locationSelected = const PlaceNear(results: [])});

  @override
  @JsonKey()
  final StatusType? status;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final CameraPosition? locationSelectedCamera;
  @override
  @JsonKey()
  final PlaceNear? locationSelected;

  @override
  String toString() {
    return 'HomeStateData(status: $status, error: $error, locationSelectedCamera: $locationSelectedCamera, locationSelected: $locationSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.locationSelectedCamera, locationSelectedCamera) ||
                other.locationSelectedCamera == locationSelectedCamera) &&
            (identical(other.locationSelected, locationSelected) ||
                other.locationSelected == locationSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, error, locationSelectedCamera, locationSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      __$$_HomeStateDataCopyWithImpl<_$_HomeStateData>(this, _$identity);
}

abstract class _HomeStateData implements HomeStateData {
  const factory _HomeStateData(
      {final StatusType? status,
      final String? error,
      final CameraPosition? locationSelectedCamera,
      final PlaceNear? locationSelected}) = _$_HomeStateData;

  @override
  StatusType? get status;
  @override
  String? get error;
  @override
  CameraPosition? get locationSelectedCamera;
  @override
  PlaceNear? get locationSelected;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStateData? data});

  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial({final HomeStateData? data}) = _$_Initial;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Loading(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading({final HomeStateData? data}) = _$_Loading;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLocationSelectedCameraCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_GetLocationSelectedCameraCopyWith(
          _$_GetLocationSelectedCamera value,
          $Res Function(_$_GetLocationSelectedCamera) then) =
      __$$_GetLocationSelectedCameraCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetLocationSelectedCameraCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_GetLocationSelectedCamera>
    implements _$$_GetLocationSelectedCameraCopyWith<$Res> {
  __$$_GetLocationSelectedCameraCopyWithImpl(
      _$_GetLocationSelectedCamera _value,
      $Res Function(_$_GetLocationSelectedCamera) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetLocationSelectedCamera(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$_GetLocationSelectedCamera implements _GetLocationSelectedCamera {
  const _$_GetLocationSelectedCamera({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getLocationSelectedCamera(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLocationSelectedCamera &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLocationSelectedCameraCopyWith<_$_GetLocationSelectedCamera>
      get copyWith => __$$_GetLocationSelectedCameraCopyWithImpl<
          _$_GetLocationSelectedCamera>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) {
    return getLocationSelectedCamera(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) {
    return getLocationSelectedCamera?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (getLocationSelectedCamera != null) {
      return getLocationSelectedCamera(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) {
    return getLocationSelectedCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) {
    return getLocationSelectedCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (getLocationSelectedCamera != null) {
      return getLocationSelectedCamera(this);
    }
    return orElse();
  }
}

abstract class _GetLocationSelectedCamera implements HomeState {
  const factory _GetLocationSelectedCamera({final HomeStateData? data}) =
      _$_GetLocationSelectedCamera;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetLocationSelectedCameraCopyWith<_$_GetLocationSelectedCamera>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Error(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error({final HomeStateData? data}) = _$_Error;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLocationSelectedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_GetLocationSelectedCopyWith(_$_GetLocationSelected value,
          $Res Function(_$_GetLocationSelected) then) =
      __$$_GetLocationSelectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetLocationSelectedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_GetLocationSelected>
    implements _$$_GetLocationSelectedCopyWith<$Res> {
  __$$_GetLocationSelectedCopyWithImpl(_$_GetLocationSelected _value,
      $Res Function(_$_GetLocationSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetLocationSelected(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$_GetLocationSelected implements _GetLocationSelected {
  const _$_GetLocationSelected({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getLocationSelected(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLocationSelected &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLocationSelectedCopyWith<_$_GetLocationSelected> get copyWith =>
      __$$_GetLocationSelectedCopyWithImpl<_$_GetLocationSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) loading,
    required TResult Function(HomeStateData? data) getLocationSelectedCamera,
    required TResult Function(HomeStateData? data) error,
    required TResult Function(HomeStateData? data) getLocationSelected,
  }) {
    return getLocationSelected(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? loading,
    TResult? Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult? Function(HomeStateData? data)? error,
    TResult? Function(HomeStateData? data)? getLocationSelected,
  }) {
    return getLocationSelected?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? loading,
    TResult Function(HomeStateData? data)? getLocationSelectedCamera,
    TResult Function(HomeStateData? data)? error,
    TResult Function(HomeStateData? data)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (getLocationSelected != null) {
      return getLocationSelected(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetLocationSelectedCamera value)
        getLocationSelectedCamera,
    required TResult Function(_Error value) error,
    required TResult Function(_GetLocationSelected value) getLocationSelected,
  }) {
    return getLocationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult? Function(_Error value)? error,
    TResult? Function(_GetLocationSelected value)? getLocationSelected,
  }) {
    return getLocationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetLocationSelectedCamera value)?
        getLocationSelectedCamera,
    TResult Function(_Error value)? error,
    TResult Function(_GetLocationSelected value)? getLocationSelected,
    required TResult orElse(),
  }) {
    if (getLocationSelected != null) {
      return getLocationSelected(this);
    }
    return orElse();
  }
}

abstract class _GetLocationSelected implements HomeState {
  const factory _GetLocationSelected({final HomeStateData? data}) =
      _$_GetLocationSelected;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetLocationSelectedCopyWith<_$_GetLocationSelected> get copyWith =>
      throw _privateConstructorUsedError;
}
