// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streetSegmentRespone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreetSegmentResponse _$StreetSegmentResponseFromJson(
    Map<String, dynamic> json) {
  return _StreetSegmentResponse.fromJson(json);
}

/// @nodoc
mixin _$StreetSegmentResponse {
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<StreetSegment>? get streetSegments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreetSegmentResponseCopyWith<StreetSegmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetSegmentResponseCopyWith<$Res> {
  factory $StreetSegmentResponseCopyWith(StreetSegmentResponse value,
          $Res Function(StreetSegmentResponse) then) =
      _$StreetSegmentResponseCopyWithImpl<$Res, StreetSegmentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'size') int? size,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'items') List<StreetSegment>? streetSegments});
}

/// @nodoc
class _$StreetSegmentResponseCopyWithImpl<$Res,
        $Val extends StreetSegmentResponse>
    implements $StreetSegmentResponseCopyWith<$Res> {
  _$StreetSegmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? streetSegments = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      streetSegments: freezed == streetSegments
          ? _value.streetSegments
          : streetSegments // ignore: cast_nullable_to_non_nullable
              as List<StreetSegment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreetSegmentResponseCopyWith<$Res>
    implements $StreetSegmentResponseCopyWith<$Res> {
  factory _$$_StreetSegmentResponseCopyWith(_$_StreetSegmentResponse value,
          $Res Function(_$_StreetSegmentResponse) then) =
      __$$_StreetSegmentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'size') int? size,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'totalPages') int? totalPages,
      @JsonKey(name: 'items') List<StreetSegment>? streetSegments});
}

/// @nodoc
class __$$_StreetSegmentResponseCopyWithImpl<$Res>
    extends _$StreetSegmentResponseCopyWithImpl<$Res, _$_StreetSegmentResponse>
    implements _$$_StreetSegmentResponseCopyWith<$Res> {
  __$$_StreetSegmentResponseCopyWithImpl(_$_StreetSegmentResponse _value,
      $Res Function(_$_StreetSegmentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? streetSegments = freezed,
  }) {
    return _then(_$_StreetSegmentResponse(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      streetSegments: freezed == streetSegments
          ? _value._streetSegments
          : streetSegments // ignore: cast_nullable_to_non_nullable
              as List<StreetSegment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreetSegmentResponse
    with DiagnosticableTreeMixin
    implements _StreetSegmentResponse {
  const _$_StreetSegmentResponse(
      {@JsonKey(name: 'size') this.size,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'totalPages') this.totalPages,
      @JsonKey(name: 'items') final List<StreetSegment>? streetSegments})
      : _streetSegments = streetSegments;

  factory _$_StreetSegmentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StreetSegmentResponseFromJson(json);

  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'totalPages')
  final int? totalPages;
  final List<StreetSegment>? _streetSegments;
  @override
  @JsonKey(name: 'items')
  List<StreetSegment>? get streetSegments {
    final value = _streetSegments;
    if (value == null) return null;
    if (_streetSegments is EqualUnmodifiableListView) return _streetSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StreetSegmentResponse(size: $size, total: $total, page: $page, totalPages: $totalPages, streetSegments: $streetSegments)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StreetSegmentResponse'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('streetSegments', streetSegments));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreetSegmentResponse &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality()
                .equals(other._streetSegments, _streetSegments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, total, page, totalPages,
      const DeepCollectionEquality().hash(_streetSegments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreetSegmentResponseCopyWith<_$_StreetSegmentResponse> get copyWith =>
      __$$_StreetSegmentResponseCopyWithImpl<_$_StreetSegmentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreetSegmentResponseToJson(
      this,
    );
  }
}

abstract class _StreetSegmentResponse implements StreetSegmentResponse {
  const factory _StreetSegmentResponse(
          {@JsonKey(name: 'size') final int? size,
          @JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'totalPages') final int? totalPages,
          @JsonKey(name: 'items') final List<StreetSegment>? streetSegments}) =
      _$_StreetSegmentResponse;

  factory _StreetSegmentResponse.fromJson(Map<String, dynamic> json) =
      _$_StreetSegmentResponse.fromJson;

  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'totalPages')
  int? get totalPages;
  @override
  @JsonKey(name: 'items')
  List<StreetSegment>? get streetSegments;
  @override
  @JsonKey(ignore: true)
  _$$_StreetSegmentResponseCopyWith<_$_StreetSegmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
