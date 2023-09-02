// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_box_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapBoxSearch _$MapBoxSearchFromJson(Map<String, dynamic> json) {
  return _MapBoxSearch.fromJson(json);
}

/// @nodoc
mixin _$MapBoxSearch {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'query')
  List<String>? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<Features>? get features => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribution')
  String? get attribution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapBoxSearchCopyWith<MapBoxSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapBoxSearchCopyWith<$Res> {
  factory $MapBoxSearchCopyWith(
          MapBoxSearch value, $Res Function(MapBoxSearch) then) =
      _$MapBoxSearchCopyWithImpl<$Res, MapBoxSearch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'query') List<String>? query,
      @JsonKey(name: 'features') List<Features>? features,
      @JsonKey(name: 'attribution') String? attribution});
}

/// @nodoc
class _$MapBoxSearchCopyWithImpl<$Res, $Val extends MapBoxSearch>
    implements $MapBoxSearchCopyWith<$Res> {
  _$MapBoxSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? query = freezed,
    Object? features = freezed,
    Object? attribution = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<Features>?,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapBoxSearchCopyWith<$Res>
    implements $MapBoxSearchCopyWith<$Res> {
  factory _$$_MapBoxSearchCopyWith(
          _$_MapBoxSearch value, $Res Function(_$_MapBoxSearch) then) =
      __$$_MapBoxSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'query') List<String>? query,
      @JsonKey(name: 'features') List<Features>? features,
      @JsonKey(name: 'attribution') String? attribution});
}

/// @nodoc
class __$$_MapBoxSearchCopyWithImpl<$Res>
    extends _$MapBoxSearchCopyWithImpl<$Res, _$_MapBoxSearch>
    implements _$$_MapBoxSearchCopyWith<$Res> {
  __$$_MapBoxSearchCopyWithImpl(
      _$_MapBoxSearch _value, $Res Function(_$_MapBoxSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? query = freezed,
    Object? features = freezed,
    Object? attribution = freezed,
  }) {
    return _then(_$_MapBoxSearch(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<Features>?,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapBoxSearch with DiagnosticableTreeMixin implements _MapBoxSearch {
  const _$_MapBoxSearch(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'query') final List<String>? query,
      @JsonKey(name: 'features') final List<Features>? features,
      @JsonKey(name: 'attribution') this.attribution})
      : _query = query,
        _features = features;

  factory _$_MapBoxSearch.fromJson(Map<String, dynamic> json) =>
      _$$_MapBoxSearchFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<String>? _query;
  @override
  @JsonKey(name: 'query')
  List<String>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableListView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Features>? _features;
  @override
  @JsonKey(name: 'features')
  List<Features>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'attribution')
  final String? attribution;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapBoxSearch(type: $type, query: $query, features: $features, attribution: $attribution)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapBoxSearch'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('features', features))
      ..add(DiagnosticsProperty('attribution', attribution));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapBoxSearch &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._query, _query) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_query),
      const DeepCollectionEquality().hash(_features),
      attribution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapBoxSearchCopyWith<_$_MapBoxSearch> get copyWith =>
      __$$_MapBoxSearchCopyWithImpl<_$_MapBoxSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapBoxSearchToJson(
      this,
    );
  }
}

abstract class _MapBoxSearch implements MapBoxSearch {
  const factory _MapBoxSearch(
          {@JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'query') final List<String>? query,
          @JsonKey(name: 'features') final List<Features>? features,
          @JsonKey(name: 'attribution') final String? attribution}) =
      _$_MapBoxSearch;

  factory _MapBoxSearch.fromJson(Map<String, dynamic> json) =
      _$_MapBoxSearch.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'query')
  List<String>? get query;
  @override
  @JsonKey(name: 'features')
  List<Features>? get features;
  @override
  @JsonKey(name: 'attribution')
  String? get attribution;
  @override
  @JsonKey(ignore: true)
  _$$_MapBoxSearchCopyWith<_$_MapBoxSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
