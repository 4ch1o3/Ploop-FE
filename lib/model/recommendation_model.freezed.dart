// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteMetaInformation {
  String get encodedPolyline;
  int get distanceMeters;
  String get duration;

  /// Create a copy of RouteMetaInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteMetaInformationCopyWith<RouteMetaInformation> get copyWith =>
      _$RouteMetaInformationCopyWithImpl<RouteMetaInformation>(
          this as RouteMetaInformation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteMetaInformation &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, encodedPolyline, distanceMeters, duration);

  @override
  String toString() {
    return 'RouteMetaInformation(encodedPolyline: $encodedPolyline, distanceMeters: $distanceMeters, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $RouteMetaInformationCopyWith<$Res> {
  factory $RouteMetaInformationCopyWith(RouteMetaInformation value,
          $Res Function(RouteMetaInformation) _then) =
      _$RouteMetaInformationCopyWithImpl;
  @useResult
  $Res call({String encodedPolyline, int distanceMeters, String duration});
}

/// @nodoc
class _$RouteMetaInformationCopyWithImpl<$Res>
    implements $RouteMetaInformationCopyWith<$Res> {
  _$RouteMetaInformationCopyWithImpl(this._self, this._then);

  final RouteMetaInformation _self;
  final $Res Function(RouteMetaInformation) _then;

  /// Create a copy of RouteMetaInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encodedPolyline = null,
    Object? distanceMeters = null,
    Object? duration = null,
  }) {
    return _then(_self.copyWith(
      encodedPolyline: null == encodedPolyline
          ? _self.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String,
      distanceMeters: null == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RouteMetaInformation implements RouteMetaInformation {
  const _RouteMetaInformation(
      {required this.encodedPolyline,
      required this.distanceMeters,
      required this.duration});

  @override
  final String encodedPolyline;
  @override
  final int distanceMeters;
  @override
  final String duration;

  /// Create a copy of RouteMetaInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteMetaInformationCopyWith<_RouteMetaInformation> get copyWith =>
      __$RouteMetaInformationCopyWithImpl<_RouteMetaInformation>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteMetaInformation &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, encodedPolyline, distanceMeters, duration);

  @override
  String toString() {
    return 'RouteMetaInformation(encodedPolyline: $encodedPolyline, distanceMeters: $distanceMeters, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class _$RouteMetaInformationCopyWith<$Res>
    implements $RouteMetaInformationCopyWith<$Res> {
  factory _$RouteMetaInformationCopyWith(_RouteMetaInformation value,
          $Res Function(_RouteMetaInformation) _then) =
      __$RouteMetaInformationCopyWithImpl;
  @override
  @useResult
  $Res call({String encodedPolyline, int distanceMeters, String duration});
}

/// @nodoc
class __$RouteMetaInformationCopyWithImpl<$Res>
    implements _$RouteMetaInformationCopyWith<$Res> {
  __$RouteMetaInformationCopyWithImpl(this._self, this._then);

  final _RouteMetaInformation _self;
  final $Res Function(_RouteMetaInformation) _then;

  /// Create a copy of RouteMetaInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? encodedPolyline = null,
    Object? distanceMeters = null,
    Object? duration = null,
  }) {
    return _then(_RouteMetaInformation(
      encodedPolyline: null == encodedPolyline
          ? _self.encodedPolyline
          : encodedPolyline // ignore: cast_nullable_to_non_nullable
              as String,
      distanceMeters: null == distanceMeters
          ? _self.distanceMeters
          : distanceMeters // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Recommendation {
  @LatLngConverter()
  LatLng get current;
  @LatLngConverter()
  LatLng get destination;
  bool get success;
  String get message;
  @LatLngConverter()
  List<LatLng> get waypoints;
  @JsonKey(includeFromJson: false, includeToJson: false)
  RouteMetaInformation? get meta;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecommendationCopyWith<Recommendation> get copyWith =>
      _$RecommendationCopyWithImpl<Recommendation>(
          this as Recommendation, _$identity);

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Recommendation &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.waypoints, waypoints) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, destination, success,
      message, const DeepCollectionEquality().hash(waypoints), meta);

  @override
  String toString() {
    return 'Recommendation(current: $current, destination: $destination, success: $success, message: $message, waypoints: $waypoints, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $RecommendationCopyWith<$Res> {
  factory $RecommendationCopyWith(
          Recommendation value, $Res Function(Recommendation) _then) =
      _$RecommendationCopyWithImpl;
  @useResult
  $Res call(
      {@LatLngConverter() LatLng current,
      @LatLngConverter() LatLng destination,
      bool success,
      String message,
      @LatLngConverter() List<LatLng> waypoints,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RouteMetaInformation? meta});

  $RouteMetaInformationCopyWith<$Res>? get meta;
}

/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._self, this._then);

  final Recommendation _self;
  final $Res Function(Recommendation) _then;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? destination = null,
    Object? success = null,
    Object? message = null,
    Object? waypoints = null,
    Object? meta = freezed,
  }) {
    return _then(_self.copyWith(
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as LatLng,
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as LatLng,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _self.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as RouteMetaInformation?,
    ));
  }

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteMetaInformationCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $RouteMetaInformationCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Recommendation implements Recommendation {
  const _Recommendation(
      {@LatLngConverter() required this.current,
      @LatLngConverter() required this.destination,
      required this.success,
      required this.message,
      @LatLngConverter() required final List<LatLng> waypoints,
      @JsonKey(includeFromJson: false, includeToJson: false) this.meta})
      : _waypoints = waypoints;
  factory _Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);

  @override
  @LatLngConverter()
  final LatLng current;
  @override
  @LatLngConverter()
  final LatLng destination;
  @override
  final bool success;
  @override
  final String message;
  final List<LatLng> _waypoints;
  @override
  @LatLngConverter()
  List<LatLng> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final RouteMetaInformation? meta;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecommendationCopyWith<_Recommendation> get copyWith =>
      __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecommendationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recommendation &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, destination, success,
      message, const DeepCollectionEquality().hash(_waypoints), meta);

  @override
  String toString() {
    return 'Recommendation(current: $current, destination: $destination, success: $success, message: $message, waypoints: $waypoints, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$RecommendationCopyWith<$Res>
    implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(
          _Recommendation value, $Res Function(_Recommendation) _then) =
      __$RecommendationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@LatLngConverter() LatLng current,
      @LatLngConverter() LatLng destination,
      bool success,
      String message,
      @LatLngConverter() List<LatLng> waypoints,
      @JsonKey(includeFromJson: false, includeToJson: false)
      RouteMetaInformation? meta});

  @override
  $RouteMetaInformationCopyWith<$Res>? get meta;
}

/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(this._self, this._then);

  final _Recommendation _self;
  final $Res Function(_Recommendation) _then;

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? current = null,
    Object? destination = null,
    Object? success = null,
    Object? message = null,
    Object? waypoints = null,
    Object? meta = freezed,
  }) {
    return _then(_Recommendation(
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as LatLng,
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as LatLng,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _self._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      meta: freezed == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as RouteMetaInformation?,
    ));
  }

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteMetaInformationCopyWith<$Res>? get meta {
    if (_self.meta == null) {
      return null;
    }

    return $RouteMetaInformationCopyWith<$Res>(_self.meta!, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
