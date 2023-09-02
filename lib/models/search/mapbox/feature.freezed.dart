// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Features _$FeaturesFromJson(Map<String, dynamic> json) {
  return _Features.fromJson(json);
}

/// @nodoc
mixin _$Features {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_type')
  List<String>? get placeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'relevance')
  double? get relevance => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String? get placeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bbox')
  List<double>? get bbox => throw _privateConstructorUsedError;
  @JsonKey(name: 'center')
  List<double>? get center => throw _privateConstructorUsedError;
  @JsonKey(name: 'geometry')
  Geometry? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturesCopyWith<Features> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturesCopyWith<$Res> {
  factory $FeaturesCopyWith(Features value, $Res Function(Features) then) =
      _$FeaturesCopyWithImpl<$Res, Features>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'place_type') List<String>? placeType,
      @JsonKey(name: 'relevance') double? relevance,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'bbox') List<double>? bbox,
      @JsonKey(name: 'center') List<double>? center,
      @JsonKey(name: 'geometry') Geometry? geometry});

  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$FeaturesCopyWithImpl<$Res, $Val extends Features>
    implements $FeaturesCopyWith<$Res> {
  _$FeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? placeType = freezed,
    Object? relevance = freezed,
    Object? text = freezed,
    Object? placeName = freezed,
    Object? bbox = freezed,
    Object? center = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      placeType: freezed == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relevance: freezed == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      bbox: freezed == bbox
          ? _value.bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FeaturesCopyWith<$Res> implements $FeaturesCopyWith<$Res> {
  factory _$$_FeaturesCopyWith(
          _$_Features value, $Res Function(_$_Features) then) =
      __$$_FeaturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'place_type') List<String>? placeType,
      @JsonKey(name: 'relevance') double? relevance,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'place_name') String? placeName,
      @JsonKey(name: 'bbox') List<double>? bbox,
      @JsonKey(name: 'center') List<double>? center,
      @JsonKey(name: 'geometry') Geometry? geometry});

  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_FeaturesCopyWithImpl<$Res>
    extends _$FeaturesCopyWithImpl<$Res, _$_Features>
    implements _$$_FeaturesCopyWith<$Res> {
  __$$_FeaturesCopyWithImpl(
      _$_Features _value, $Res Function(_$_Features) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? placeType = freezed,
    Object? relevance = freezed,
    Object? text = freezed,
    Object? placeName = freezed,
    Object? bbox = freezed,
    Object? center = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_Features(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      placeType: freezed == placeType
          ? _value._placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      relevance: freezed == relevance
          ? _value.relevance
          : relevance // ignore: cast_nullable_to_non_nullable
              as double?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      placeName: freezed == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String?,
      bbox: freezed == bbox
          ? _value._bbox
          : bbox // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      center: freezed == center
          ? _value._center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Features with DiagnosticableTreeMixin implements _Features {
  const _$_Features(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'place_type') final List<String>? placeType,
      @JsonKey(name: 'relevance') this.relevance,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'place_name') this.placeName,
      @JsonKey(name: 'bbox') final List<double>? bbox,
      @JsonKey(name: 'center') final List<double>? center,
      @JsonKey(name: 'geometry') this.geometry})
      : _placeType = placeType,
        _bbox = bbox,
        _center = center;

  factory _$_Features.fromJson(Map<String, dynamic> json) =>
      _$$_FeaturesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<String>? _placeType;
  @override
  @JsonKey(name: 'place_type')
  List<String>? get placeType {
    final value = _placeType;
    if (value == null) return null;
    if (_placeType is EqualUnmodifiableListView) return _placeType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'relevance')
  final double? relevance;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'place_name')
  final String? placeName;
  final List<double>? _bbox;
  @override
  @JsonKey(name: 'bbox')
  List<double>? get bbox {
    final value = _bbox;
    if (value == null) return null;
    if (_bbox is EqualUnmodifiableListView) return _bbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _center;
  @override
  @JsonKey(name: 'center')
  List<double>? get center {
    final value = _center;
    if (value == null) return null;
    if (_center is EqualUnmodifiableListView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'geometry')
  final Geometry? geometry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Features(id: $id, type: $type, placeType: $placeType, relevance: $relevance, text: $text, placeName: $placeName, bbox: $bbox, center: $center, geometry: $geometry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Features'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('placeType', placeType))
      ..add(DiagnosticsProperty('relevance', relevance))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('placeName', placeName))
      ..add(DiagnosticsProperty('bbox', bbox))
      ..add(DiagnosticsProperty('center', center))
      ..add(DiagnosticsProperty('geometry', geometry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Features &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._placeType, _placeType) &&
            (identical(other.relevance, relevance) ||
                other.relevance == relevance) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            const DeepCollectionEquality().equals(other._bbox, _bbox) &&
            const DeepCollectionEquality().equals(other._center, _center) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      const DeepCollectionEquality().hash(_placeType),
      relevance,
      text,
      placeName,
      const DeepCollectionEquality().hash(_bbox),
      const DeepCollectionEquality().hash(_center),
      geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeaturesCopyWith<_$_Features> get copyWith =>
      __$$_FeaturesCopyWithImpl<_$_Features>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeaturesToJson(
      this,
    );
  }
}

abstract class _Features implements Features {
  const factory _Features(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'place_type') final List<String>? placeType,
      @JsonKey(name: 'relevance') final double? relevance,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'place_name') final String? placeName,
      @JsonKey(name: 'bbox') final List<double>? bbox,
      @JsonKey(name: 'center') final List<double>? center,
      @JsonKey(name: 'geometry') final Geometry? geometry}) = _$_Features;

  factory _Features.fromJson(Map<String, dynamic> json) = _$_Features.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'place_type')
  List<String>? get placeType;
  @override
  @JsonKey(name: 'relevance')
  double? get relevance;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'place_name')
  String? get placeName;
  @override
  @JsonKey(name: 'bbox')
  List<double>? get bbox;
  @override
  @JsonKey(name: 'center')
  List<double>? get center;
  @override
  @JsonKey(name: 'geometry')
  Geometry? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_FeaturesCopyWith<_$_Features> get copyWith =>
      throw _privateConstructorUsedError;
}
