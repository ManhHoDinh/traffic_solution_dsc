// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  @JsonKey(name: 'ReportId')
  String? get reportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SegmentId')
  String? get SegmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'StoreId')
  String? get StoreId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgSpeed')
  double? get avgSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  @TimestampSerializer()
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ReportId') String? reportId,
      @JsonKey(name: 'SegmentId') String? SegmentId,
      @JsonKey(name: 'StoreId') String? StoreId,
      @JsonKey(name: 'avgSpeed') double? avgSpeed,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'time') @TimestampSerializer() DateTime time});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = freezed,
    Object? SegmentId = freezed,
    Object? StoreId = freezed,
    Object? avgSpeed = freezed,
    Object? count = freezed,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      SegmentId: freezed == SegmentId
          ? _value.SegmentId
          : SegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      StoreId: freezed == StoreId
          ? _value.StoreId
          : StoreId // ignore: cast_nullable_to_non_nullable
              as String?,
      avgSpeed: freezed == avgSpeed
          ? _value.avgSpeed
          : avgSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ReportId') String? reportId,
      @JsonKey(name: 'SegmentId') String? SegmentId,
      @JsonKey(name: 'StoreId') String? StoreId,
      @JsonKey(name: 'avgSpeed') double? avgSpeed,
      @JsonKey(name: 'count') int? count,
      @JsonKey(name: 'time') @TimestampSerializer() DateTime time});
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$_Report>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = freezed,
    Object? SegmentId = freezed,
    Object? StoreId = freezed,
    Object? avgSpeed = freezed,
    Object? count = freezed,
    Object? time = null,
  }) {
    return _then(_$_Report(
      reportId: freezed == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String?,
      SegmentId: freezed == SegmentId
          ? _value.SegmentId
          : SegmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      StoreId: freezed == StoreId
          ? _value.StoreId
          : StoreId // ignore: cast_nullable_to_non_nullable
              as String?,
      avgSpeed: freezed == avgSpeed
          ? _value.avgSpeed
          : avgSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report with DiagnosticableTreeMixin implements _Report {
  const _$_Report(
      {@JsonKey(name: 'ReportId') this.reportId,
      @JsonKey(name: 'SegmentId') this.SegmentId,
      @JsonKey(name: 'StoreId') this.StoreId,
      @JsonKey(name: 'avgSpeed') this.avgSpeed,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'time') @TimestampSerializer() required this.time});

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  @JsonKey(name: 'ReportId')
  final String? reportId;
  @override
  @JsonKey(name: 'SegmentId')
  final String? SegmentId;
  @override
  @JsonKey(name: 'StoreId')
  final String? StoreId;
  @override
  @JsonKey(name: 'avgSpeed')
  final double? avgSpeed;
  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'time')
  @TimestampSerializer()
  final DateTime time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Report(reportId: $reportId, SegmentId: $SegmentId, StoreId: $StoreId, avgSpeed: $avgSpeed, count: $count, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Report'))
      ..add(DiagnosticsProperty('reportId', reportId))
      ..add(DiagnosticsProperty('SegmentId', SegmentId))
      ..add(DiagnosticsProperty('StoreId', StoreId))
      ..add(DiagnosticsProperty('avgSpeed', avgSpeed))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.SegmentId, SegmentId) ||
                other.SegmentId == SegmentId) &&
            (identical(other.StoreId, StoreId) || other.StoreId == StoreId) &&
            (identical(other.avgSpeed, avgSpeed) ||
                other.avgSpeed == avgSpeed) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, reportId, SegmentId, StoreId, avgSpeed, count, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {@JsonKey(name: 'ReportId') final String? reportId,
      @JsonKey(name: 'SegmentId') final String? SegmentId,
      @JsonKey(name: 'StoreId') final String? StoreId,
      @JsonKey(name: 'avgSpeed') final double? avgSpeed,
      @JsonKey(name: 'count') final int? count,
      @JsonKey(name: 'time')
      @TimestampSerializer()
      required final DateTime time}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  @JsonKey(name: 'ReportId')
  String? get reportId;
  @override
  @JsonKey(name: 'SegmentId')
  String? get SegmentId;
  @override
  @JsonKey(name: 'StoreId')
  String? get StoreId;
  @override
  @JsonKey(name: 'avgSpeed')
  double? get avgSpeed;
  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'time')
  @TimestampSerializer()
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}
