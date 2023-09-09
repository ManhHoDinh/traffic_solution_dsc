// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street_segment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StreetSegmentStateData {
  StatusType? get status => throw _privateConstructorUsedError;
  List<StreetSegment> get streetSegments => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreetSegmentStateDataCopyWith<StreetSegmentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetSegmentStateDataCopyWith<$Res> {
  factory $StreetSegmentStateDataCopyWith(StreetSegmentStateData value,
          $Res Function(StreetSegmentStateData) then) =
      _$StreetSegmentStateDataCopyWithImpl<$Res, StreetSegmentStateData>;
  @useResult
  $Res call(
      {StatusType? status, List<StreetSegment> streetSegments, String? error});
}

/// @nodoc
class _$StreetSegmentStateDataCopyWithImpl<$Res,
        $Val extends StreetSegmentStateData>
    implements $StreetSegmentStateDataCopyWith<$Res> {
  _$StreetSegmentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? streetSegments = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      streetSegments: null == streetSegments
          ? _value.streetSegments
          : streetSegments // ignore: cast_nullable_to_non_nullable
              as List<StreetSegment>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateDataCopyWith<$Res>
    implements $StreetSegmentStateDataCopyWith<$Res> {
  factory _$$_HomeStateDataCopyWith(
          _$_HomeStateData value, $Res Function(_$_HomeStateData) then) =
      __$$_HomeStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType? status, List<StreetSegment> streetSegments, String? error});
}

/// @nodoc
class __$$_HomeStateDataCopyWithImpl<$Res>
    extends _$StreetSegmentStateDataCopyWithImpl<$Res, _$_HomeStateData>
    implements _$$_HomeStateDataCopyWith<$Res> {
  __$$_HomeStateDataCopyWithImpl(
      _$_HomeStateData _value, $Res Function(_$_HomeStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? streetSegments = null,
    Object? error = freezed,
  }) {
    return _then(_$_HomeStateData(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType?,
      streetSegments: null == streetSegments
          ? _value._streetSegments
          : streetSegments // ignore: cast_nullable_to_non_nullable
              as List<StreetSegment>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeStateData implements _HomeStateData {
  const _$_HomeStateData(
      {this.status = StatusType.init,
      final List<StreetSegment> streetSegments = const [],
      this.error = ''})
      : _streetSegments = streetSegments;

  @override
  @JsonKey()
  final StatusType? status;
  final List<StreetSegment> _streetSegments;
  @override
  @JsonKey()
  List<StreetSegment> get streetSegments {
    if (_streetSegments is EqualUnmodifiableListView) return _streetSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streetSegments);
  }

  @override
  @JsonKey()
  final String? error;

  @override
  String toString() {
    return 'StreetSegmentStateData(status: $status, streetSegments: $streetSegments, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._streetSegments, _streetSegments) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_streetSegments), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      __$$_HomeStateDataCopyWithImpl<_$_HomeStateData>(this, _$identity);
}

abstract class _HomeStateData implements StreetSegmentStateData {
  const factory _HomeStateData(
      {final StatusType? status,
      final List<StreetSegment> streetSegments,
      final String? error}) = _$_HomeStateData;

  @override
  StatusType? get status;
  @override
  List<StreetSegment> get streetSegments;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StreetSegmentState {
  StreetSegmentStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StreetSegmentStateData? data) initial,
    required TResult Function(StreetSegmentStateData? data) loading,
    required TResult Function(StreetSegmentStateData? data) getStreetSegments,
    required TResult Function(StreetSegmentStateData? data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreetSegmentStateData? data)? initial,
    TResult? Function(StreetSegmentStateData? data)? loading,
    TResult? Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult? Function(StreetSegmentStateData? data)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreetSegmentStateData? data)? initial,
    TResult Function(StreetSegmentStateData? data)? loading,
    TResult Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult Function(StreetSegmentStateData? data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) getStreetSegments,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? getStreetSegments,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? getStreetSegments,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreetSegmentStateCopyWith<StreetSegmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetSegmentStateCopyWith<$Res> {
  factory $StreetSegmentStateCopyWith(
          StreetSegmentState value, $Res Function(StreetSegmentState) then) =
      _$StreetSegmentStateCopyWithImpl<$Res, StreetSegmentState>;
  @useResult
  $Res call({StreetSegmentStateData? data});

  $StreetSegmentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$StreetSegmentStateCopyWithImpl<$Res, $Val extends StreetSegmentState>
    implements $StreetSegmentStateCopyWith<$Res> {
  _$StreetSegmentStateCopyWithImpl(this._value, this._then);

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
              as StreetSegmentStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StreetSegmentStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StreetSegmentStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $StreetSegmentStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreetSegmentStateData? data});

  @override
  $StreetSegmentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StreetSegmentStateCopyWithImpl<$Res, _$_Initial>
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
              as StreetSegmentStateData?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.data});

  @override
  final StreetSegmentStateData? data;

  @override
  String toString() {
    return 'StreetSegmentState.initial(data: $data)';
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
    required TResult Function(StreetSegmentStateData? data) initial,
    required TResult Function(StreetSegmentStateData? data) loading,
    required TResult Function(StreetSegmentStateData? data) getStreetSegments,
    required TResult Function(StreetSegmentStateData? data) error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreetSegmentStateData? data)? initial,
    TResult? Function(StreetSegmentStateData? data)? loading,
    TResult? Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult? Function(StreetSegmentStateData? data)? error,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreetSegmentStateData? data)? initial,
    TResult Function(StreetSegmentStateData? data)? loading,
    TResult Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult Function(StreetSegmentStateData? data)? error,
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
    required TResult Function(_Loaded value) getStreetSegments,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? getStreetSegments,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? getStreetSegments,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StreetSegmentState {
  const factory _Initial({final StreetSegmentStateData? data}) = _$_Initial;

  @override
  StreetSegmentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $StreetSegmentStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreetSegmentStateData? data});

  @override
  $StreetSegmentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$StreetSegmentStateCopyWithImpl<$Res, _$_Loading>
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
              as StreetSegmentStateData?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.data});

  @override
  final StreetSegmentStateData? data;

  @override
  String toString() {
    return 'StreetSegmentState.loading(data: $data)';
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
    required TResult Function(StreetSegmentStateData? data) initial,
    required TResult Function(StreetSegmentStateData? data) loading,
    required TResult Function(StreetSegmentStateData? data) getStreetSegments,
    required TResult Function(StreetSegmentStateData? data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreetSegmentStateData? data)? initial,
    TResult? Function(StreetSegmentStateData? data)? loading,
    TResult? Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult? Function(StreetSegmentStateData? data)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreetSegmentStateData? data)? initial,
    TResult Function(StreetSegmentStateData? data)? loading,
    TResult Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult Function(StreetSegmentStateData? data)? error,
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
    required TResult Function(_Loaded value) getStreetSegments,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? getStreetSegments,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? getStreetSegments,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StreetSegmentState {
  const factory _Loading({final StreetSegmentStateData? data}) = _$_Loading;

  @override
  StreetSegmentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $StreetSegmentStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreetSegmentStateData? data});

  @override
  $StreetSegmentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$StreetSegmentStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Loaded(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StreetSegmentStateData?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.data});

  @override
  final StreetSegmentStateData? data;

  @override
  String toString() {
    return 'StreetSegmentState.getStreetSegments(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StreetSegmentStateData? data) initial,
    required TResult Function(StreetSegmentStateData? data) loading,
    required TResult Function(StreetSegmentStateData? data) getStreetSegments,
    required TResult Function(StreetSegmentStateData? data) error,
  }) {
    return getStreetSegments(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreetSegmentStateData? data)? initial,
    TResult? Function(StreetSegmentStateData? data)? loading,
    TResult? Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult? Function(StreetSegmentStateData? data)? error,
  }) {
    return getStreetSegments?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreetSegmentStateData? data)? initial,
    TResult Function(StreetSegmentStateData? data)? loading,
    TResult Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult Function(StreetSegmentStateData? data)? error,
    required TResult orElse(),
  }) {
    if (getStreetSegments != null) {
      return getStreetSegments(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) getStreetSegments,
    required TResult Function(_Error value) error,
  }) {
    return getStreetSegments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? getStreetSegments,
    TResult? Function(_Error value)? error,
  }) {
    return getStreetSegments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? getStreetSegments,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getStreetSegments != null) {
      return getStreetSegments(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements StreetSegmentState {
  const factory _Loaded({final StreetSegmentStateData? data}) = _$_Loaded;

  @override
  StreetSegmentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $StreetSegmentStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreetSegmentStateData? data});

  @override
  $StreetSegmentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$StreetSegmentStateCopyWithImpl<$Res, _$_Error>
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
              as StreetSegmentStateData?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.data});

  @override
  final StreetSegmentStateData? data;

  @override
  String toString() {
    return 'StreetSegmentState.error(data: $data)';
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
    required TResult Function(StreetSegmentStateData? data) initial,
    required TResult Function(StreetSegmentStateData? data) loading,
    required TResult Function(StreetSegmentStateData? data) getStreetSegments,
    required TResult Function(StreetSegmentStateData? data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StreetSegmentStateData? data)? initial,
    TResult? Function(StreetSegmentStateData? data)? loading,
    TResult? Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult? Function(StreetSegmentStateData? data)? error,
  }) {
    return error?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StreetSegmentStateData? data)? initial,
    TResult Function(StreetSegmentStateData? data)? loading,
    TResult Function(StreetSegmentStateData? data)? getStreetSegments,
    TResult Function(StreetSegmentStateData? data)? error,
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
    required TResult Function(_Loaded value) getStreetSegments,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? getStreetSegments,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? getStreetSegments,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StreetSegmentState {
  const factory _Error({final StreetSegmentStateData? data}) = _$_Error;

  @override
  StreetSegmentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
