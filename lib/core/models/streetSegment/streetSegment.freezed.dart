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
  @JsonKey(name: 'segmentStreetId')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'startLongitude')
  double? get StartLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'startLatitude')
  double? get StartLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'endLongitude')
  double? get EndLng => throw _privateConstructorUsedError;
  @JsonKey(name: 'endLatitude')
  double? get EndLat => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'streetId')
  String? get streetId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'segmentStreetId') String? id,
      @JsonKey(name: 'startLongitude') double? StartLng,
      @JsonKey(name: 'startLatitude') double? StartLat,
      @JsonKey(name: 'endLongitude') double? EndLng,
      @JsonKey(name: 'endLatitude') double? EndLat,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'streetId') String? streetId});
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
    Object? id = freezed,
    Object? StartLng = freezed,
    Object? StartLat = freezed,
    Object? EndLng = freezed,
    Object? EndLat = freezed,
    Object? status = freezed,
    Object? streetId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      StartLng: freezed == StartLng
          ? _value.StartLng
          : StartLng // ignore: cast_nullable_to_non_nullable
              as double?,
      StartLat: freezed == StartLat
          ? _value.StartLat
          : StartLat // ignore: cast_nullable_to_non_nullable
              as double?,
      EndLng: freezed == EndLng
          ? _value.EndLng
          : EndLng // ignore: cast_nullable_to_non_nullable
              as double?,
      EndLat: freezed == EndLat
          ? _value.EndLat
          : EndLat // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'segmentStreetId') String? id,
      @JsonKey(name: 'startLongitude') double? StartLng,
      @JsonKey(name: 'startLatitude') double? StartLat,
      @JsonKey(name: 'endLongitude') double? EndLng,
      @JsonKey(name: 'endLatitude') double? EndLat,
      @JsonKey(name: 'status') int? status,
      @JsonKey(name: 'streetId') String? streetId});
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
    Object? id = freezed,
    Object? StartLng = freezed,
    Object? StartLat = freezed,
    Object? EndLng = freezed,
    Object? EndLat = freezed,
    Object? status = freezed,
    Object? streetId = freezed,
  }) {
    return _then(_$_StreetSegment(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      StartLng: freezed == StartLng
          ? _value.StartLng
          : StartLng // ignore: cast_nullable_to_non_nullable
              as double?,
      StartLat: freezed == StartLat
          ? _value.StartLat
          : StartLat // ignore: cast_nullable_to_non_nullable
              as double?,
      EndLng: freezed == EndLng
          ? _value.EndLng
          : EndLng // ignore: cast_nullable_to_non_nullable
              as double?,
      EndLat: freezed == EndLat
          ? _value.EndLat
          : EndLat // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      streetId: freezed == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreetSegment with DiagnosticableTreeMixin implements _StreetSegment {
  const _$_StreetSegment(
      {@JsonKey(name: 'segmentStreetId') this.id,
      @JsonKey(name: 'startLongitude') this.StartLng,
      @JsonKey(name: 'startLatitude') this.StartLat,
      @JsonKey(name: 'endLongitude') this.EndLng,
      @JsonKey(name: 'endLatitude') this.EndLat,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'streetId') this.streetId});

  factory _$_StreetSegment.fromJson(Map<String, dynamic> json) =>
      _$$_StreetSegmentFromJson(json);

  @override
  @JsonKey(name: 'segmentStreetId')
  final String? id;
  @override
  @JsonKey(name: 'startLongitude')
  final double? StartLng;
  @override
  @JsonKey(name: 'startLatitude')
  final double? StartLat;
  @override
  @JsonKey(name: 'endLongitude')
  final double? EndLng;
  @override
  @JsonKey(name: 'endLatitude')
  final double? EndLat;
  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'streetId')
  final String? streetId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreetSegment(id: $id, StartLng: $StartLng, StartLat: $StartLat, EndLng: $EndLng, EndLat: $EndLat, status: $status, streetId: $streetId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreetSegment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('StartLng', StartLng))
      ..add(DiagnosticsProperty('StartLat', StartLat))
      ..add(DiagnosticsProperty('EndLng', EndLng))
      ..add(DiagnosticsProperty('EndLat', EndLat))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('streetId', streetId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreetSegment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.StartLng, StartLng) ||
                other.StartLng == StartLng) &&
            (identical(other.StartLat, StartLat) ||
                other.StartLat == StartLat) &&
            (identical(other.EndLng, EndLng) || other.EndLng == EndLng) &&
            (identical(other.EndLat, EndLat) || other.EndLat == EndLat) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, StartLng, StartLat, EndLng, EndLat, status, streetId);

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
      {@JsonKey(name: 'segmentStreetId') final String? id,
      @JsonKey(name: 'startLongitude') final double? StartLng,
      @JsonKey(name: 'startLatitude') final double? StartLat,
      @JsonKey(name: 'endLongitude') final double? EndLng,
      @JsonKey(name: 'endLatitude') final double? EndLat,
      @JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'streetId') final String? streetId}) = _$_StreetSegment;

  factory _StreetSegment.fromJson(Map<String, dynamic> json) =
      _$_StreetSegment.fromJson;

  @override
  @JsonKey(name: 'segmentStreetId')
  String? get id;
  @override
  @JsonKey(name: 'startLongitude')
  double? get StartLng;
  @override
  @JsonKey(name: 'startLatitude')
  double? get StartLat;
  @override
  @JsonKey(name: 'endLongitude')
  double? get EndLng;
  @override
  @JsonKey(name: 'endLatitude')
  double? get EndLat;
  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'streetId')
  String? get streetId;
  @override
  @JsonKey(ignore: true)
  _$$_StreetSegmentCopyWith<_$_StreetSegment> get copyWith =>
      throw _privateConstructorUsedError;
}
