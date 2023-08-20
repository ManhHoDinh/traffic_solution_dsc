// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streetSegment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreetSegment _$StreetSegmentFromJson(Map<String, dynamic> json) {
  return _StreetSegment.fromJson(json);
}

/// @nodoc
mixin _$StreetSegment {
  String get id => throw _privateConstructorUsedError;
  String? get streetId => throw _privateConstructorUsedError;
  String? get StartLocationX => throw _privateConstructorUsedError;
  String? get StartLocationY => throw _privateConstructorUsedError;
  String? get EndLocationX => throw _privateConstructorUsedError;
  String? get EndLocationY => throw _privateConstructorUsedError;
  String? get Status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreetSegmentCopyWith<StreetSegment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetSegmentCopyWith<$Res> {
  factory $StreetSegmentCopyWith(
          StreetSegment value, $Res Function(StreetSegment) then) =
      _$StreetSegmentCopyWithImpl<$Res, StreetSegment>;
  @useResult
  $Res call(
      {String id,
      String? streetId,
      String? StartLocationX,
      String? StartLocationY,
      String? EndLocationX,
      String? EndLocationY,
      String? Status});
}

/// @nodoc
class _$StreetSegmentCopyWithImpl<$Res, $Val extends StreetSegment>
    implements $StreetSegmentCopyWith<$Res> {
  _$StreetSegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetId = freezed,
    Object? StartLocationX = freezed,
    Object? StartLocationY = freezed,
    Object? EndLocationX = freezed,
    Object? EndLocationY = freezed,
    Object? Status = freezed,
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
      StartLocationX: freezed == StartLocationX
          ? _value.StartLocationX
          : StartLocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      StartLocationY: freezed == StartLocationY
          ? _value.StartLocationY
          : StartLocationY // ignore: cast_nullable_to_non_nullable
              as String?,
      EndLocationX: freezed == EndLocationX
          ? _value.EndLocationX
          : EndLocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      EndLocationY: freezed == EndLocationY
          ? _value.EndLocationY
          : EndLocationY // ignore: cast_nullable_to_non_nullable
              as String?,
      Status: freezed == Status
          ? _value.Status
          : Status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreetSegmentCopyWith<$Res>
    implements $StreetSegmentCopyWith<$Res> {
  factory _$$_StreetSegmentCopyWith(
          _$_StreetSegment value, $Res Function(_$_StreetSegment) then) =
      __$$_StreetSegmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? streetId,
      String? StartLocationX,
      String? StartLocationY,
      String? EndLocationX,
      String? EndLocationY,
      String? Status});
}

/// @nodoc
class __$$_StreetSegmentCopyWithImpl<$Res>
    extends _$StreetSegmentCopyWithImpl<$Res, _$_StreetSegment>
    implements _$$_StreetSegmentCopyWith<$Res> {
  __$$_StreetSegmentCopyWithImpl(
      _$_StreetSegment _value, $Res Function(_$_StreetSegment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetId = freezed,
    Object? StartLocationX = freezed,
    Object? StartLocationY = freezed,
    Object? EndLocationX = freezed,
    Object? EndLocationY = freezed,
    Object? Status = freezed,
  }) {
    return _then(_$_StreetSegment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
      StartLocationX: freezed == StartLocationX
          ? _value.StartLocationX
          : StartLocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      StartLocationY: freezed == StartLocationY
          ? _value.StartLocationY
          : StartLocationY // ignore: cast_nullable_to_non_nullable
              as String?,
      EndLocationX: freezed == EndLocationX
          ? _value.EndLocationX
          : EndLocationX // ignore: cast_nullable_to_non_nullable
              as String?,
      EndLocationY: freezed == EndLocationY
          ? _value.EndLocationY
          : EndLocationY // ignore: cast_nullable_to_non_nullable
              as String?,
      Status: freezed == Status
          ? _value.Status
          : Status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreetSegment with DiagnosticableTreeMixin implements _StreetSegment {
  const _$_StreetSegment(
      {required this.id,
      this.streetId,
      this.StartLocationX,
      this.StartLocationY,
      this.EndLocationX,
      this.EndLocationY,
      this.Status});

  factory _$_StreetSegment.fromJson(Map<String, dynamic> json) =>
      _$$_StreetSegmentFromJson(json);

  @override
  final String id;
  @override
  final String? streetId;
  @override
  final String? StartLocationX;
  @override
  final String? StartLocationY;
  @override
  final String? EndLocationX;
  @override
  final String? EndLocationY;
  @override
  final String? Status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreetSegment(id: $id, streetId: $streetId, StartLocationX: $StartLocationX, StartLocationY: $StartLocationY, EndLocationX: $EndLocationX, EndLocationY: $EndLocationY, Status: $Status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreetSegment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('streetId', streetId))
      ..add(DiagnosticsProperty('StartLocationX', StartLocationX))
      ..add(DiagnosticsProperty('StartLocationY', StartLocationY))
      ..add(DiagnosticsProperty('EndLocationX', EndLocationX))
      ..add(DiagnosticsProperty('EndLocationY', EndLocationY))
      ..add(DiagnosticsProperty('Status', Status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreetSegment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId) &&
            (identical(other.StartLocationX, StartLocationX) ||
                other.StartLocationX == StartLocationX) &&
            (identical(other.StartLocationY, StartLocationY) ||
                other.StartLocationY == StartLocationY) &&
            (identical(other.EndLocationX, EndLocationX) ||
                other.EndLocationX == EndLocationX) &&
            (identical(other.EndLocationY, EndLocationY) ||
                other.EndLocationY == EndLocationY) &&
            (identical(other.Status, Status) || other.Status == Status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetId, StartLocationX,
      StartLocationY, EndLocationX, EndLocationY, Status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreetSegmentCopyWith<_$_StreetSegment> get copyWith =>
      __$$_StreetSegmentCopyWithImpl<_$_StreetSegment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreetSegmentToJson(
      this,
    );
  }
}

abstract class _StreetSegment implements StreetSegment {
  const factory _StreetSegment(
      {required final String id,
      final String? streetId,
      final String? StartLocationX,
      final String? StartLocationY,
      final String? EndLocationX,
      final String? EndLocationY,
      final String? Status}) = _$_StreetSegment;

  factory _StreetSegment.fromJson(Map<String, dynamic> json) =
      _$_StreetSegment.fromJson;

  @override
  String get id;
  @override
  String? get streetId;
  @override
  String? get StartLocationX;
  @override
  String? get StartLocationY;
  @override
  String? get EndLocationX;
  @override
  String? get EndLocationY;
  @override
  String? get Status;
  @override
  @JsonKey(ignore: true)
  _$$_StreetSegmentCopyWith<_$_StreetSegment> get copyWith =>
      throw _privateConstructorUsedError;
}
