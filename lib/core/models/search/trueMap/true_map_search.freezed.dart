// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'true_map_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrueMapSearch _$TrueMapSearchFromJson(Map<String, dynamic> json) {
  return _TrueMapSearch.fromJson(json);
}

/// @nodoc
mixin _$TrueMapSearch {
  @JsonKey(name: 'results')
  List<Results>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrueMapSearchCopyWith<TrueMapSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrueMapSearchCopyWith<$Res> {
  factory $TrueMapSearchCopyWith(
          TrueMapSearch value, $Res Function(TrueMapSearch) then) =
      _$TrueMapSearchCopyWithImpl<$Res, TrueMapSearch>;
  @useResult
  $Res call({@JsonKey(name: 'results') List<Results>? results});
}

/// @nodoc
class _$TrueMapSearchCopyWithImpl<$Res, $Val extends TrueMapSearch>
    implements $TrueMapSearchCopyWith<$Res> {
  _$TrueMapSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrueMapSearchCopyWith<$Res>
    implements $TrueMapSearchCopyWith<$Res> {
  factory _$$_TrueMapSearchCopyWith(
          _$_TrueMapSearch value, $Res Function(_$_TrueMapSearch) then) =
      __$$_TrueMapSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'results') List<Results>? results});
}

/// @nodoc
class __$$_TrueMapSearchCopyWithImpl<$Res>
    extends _$TrueMapSearchCopyWithImpl<$Res, _$_TrueMapSearch>
    implements _$$_TrueMapSearchCopyWith<$Res> {
  __$$_TrueMapSearchCopyWithImpl(
      _$_TrueMapSearch _value, $Res Function(_$_TrueMapSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_TrueMapSearch(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrueMapSearch with DiagnosticableTreeMixin implements _TrueMapSearch {
  const _$_TrueMapSearch(
      {@JsonKey(name: 'results') final List<Results>? results})
      : _results = results;

  factory _$_TrueMapSearch.fromJson(Map<String, dynamic> json) =>
      _$$_TrueMapSearchFromJson(json);

  final List<Results>? _results;
  @override
  @JsonKey(name: 'results')
  List<Results>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrueMapSearch(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrueMapSearch'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrueMapSearch &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrueMapSearchCopyWith<_$_TrueMapSearch> get copyWith =>
      __$$_TrueMapSearchCopyWithImpl<_$_TrueMapSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrueMapSearchToJson(
      this,
    );
  }
}

abstract class _TrueMapSearch implements TrueMapSearch {
  const factory _TrueMapSearch(
          {@JsonKey(name: 'results') final List<Results>? results}) =
      _$_TrueMapSearch;

  factory _TrueMapSearch.fromJson(Map<String, dynamic> json) =
      _$_TrueMapSearch.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Results>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_TrueMapSearchCopyWith<_$_TrueMapSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
