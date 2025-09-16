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
mixin _$PolylineInformation {
  String get encodedPolyline;
  int get distanceMeters;
  String get duration;

  /// Create a copy of PolylineInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolylineInformationCopyWith<PolylineInformation> get copyWith =>
      _$PolylineInformationCopyWithImpl<PolylineInformation>(
          this as PolylineInformation, _$identity);

  /// Serializes this PolylineInformation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PolylineInformation &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, encodedPolyline, distanceMeters, duration);

  @override
  String toString() {
    return 'PolylineInformation(encodedPolyline: $encodedPolyline, distanceMeters: $distanceMeters, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $PolylineInformationCopyWith<$Res> {
  factory $PolylineInformationCopyWith(
          PolylineInformation value, $Res Function(PolylineInformation) _then) =
      _$PolylineInformationCopyWithImpl;
  @useResult
  $Res call({String encodedPolyline, int distanceMeters, String duration});
}

/// @nodoc
class _$PolylineInformationCopyWithImpl<$Res>
    implements $PolylineInformationCopyWith<$Res> {
  _$PolylineInformationCopyWithImpl(this._self, this._then);

  final PolylineInformation _self;
  final $Res Function(PolylineInformation) _then;

  /// Create a copy of PolylineInformation
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
@JsonSerializable()
class _PolylineInformation implements PolylineInformation {
  const _PolylineInformation(
      {required this.encodedPolyline,
      required this.distanceMeters,
      required this.duration});
  factory _PolylineInformation.fromJson(Map<String, dynamic> json) =>
      _$PolylineInformationFromJson(json);

  @override
  final String encodedPolyline;
  @override
  final int distanceMeters;
  @override
  final String duration;

  /// Create a copy of PolylineInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolylineInformationCopyWith<_PolylineInformation> get copyWith =>
      __$PolylineInformationCopyWithImpl<_PolylineInformation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PolylineInformationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolylineInformation &&
            (identical(other.encodedPolyline, encodedPolyline) ||
                other.encodedPolyline == encodedPolyline) &&
            (identical(other.distanceMeters, distanceMeters) ||
                other.distanceMeters == distanceMeters) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, encodedPolyline, distanceMeters, duration);

  @override
  String toString() {
    return 'PolylineInformation(encodedPolyline: $encodedPolyline, distanceMeters: $distanceMeters, duration: $duration)';
  }
}

/// @nodoc
abstract mixin class _$PolylineInformationCopyWith<$Res>
    implements $PolylineInformationCopyWith<$Res> {
  factory _$PolylineInformationCopyWith(_PolylineInformation value,
          $Res Function(_PolylineInformation) _then) =
      __$PolylineInformationCopyWithImpl;
  @override
  @useResult
  $Res call({String encodedPolyline, int distanceMeters, String duration});
}

/// @nodoc
class __$PolylineInformationCopyWithImpl<$Res>
    implements _$PolylineInformationCopyWith<$Res> {
  __$PolylineInformationCopyWithImpl(this._self, this._then);

  final _PolylineInformation _self;
  final $Res Function(_PolylineInformation) _then;

  /// Create a copy of PolylineInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? encodedPolyline = null,
    Object? distanceMeters = null,
    Object? duration = null,
  }) {
    return _then(_PolylineInformation(
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
  PolylineInformation get polylineInfo;

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
            (identical(other.polylineInfo, polylineInfo) ||
                other.polylineInfo == polylineInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, destination, success,
      message, const DeepCollectionEquality().hash(waypoints), polylineInfo);

  @override
  String toString() {
    return 'Recommendation(current: $current, destination: $destination, success: $success, message: $message, waypoints: $waypoints, polylineInfo: $polylineInfo)';
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
      PolylineInformation polylineInfo});

  $PolylineInformationCopyWith<$Res> get polylineInfo;
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
    Object? polylineInfo = null,
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
      polylineInfo: null == polylineInfo
          ? _self.polylineInfo
          : polylineInfo // ignore: cast_nullable_to_non_nullable
              as PolylineInformation,
    ));
  }

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PolylineInformationCopyWith<$Res> get polylineInfo {
    return $PolylineInformationCopyWith<$Res>(_self.polylineInfo, (value) {
      return _then(_self.copyWith(polylineInfo: value));
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
      required this.polylineInfo})
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
  final PolylineInformation polylineInfo;

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
            (identical(other.polylineInfo, polylineInfo) ||
                other.polylineInfo == polylineInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, destination, success,
      message, const DeepCollectionEquality().hash(_waypoints), polylineInfo);

  @override
  String toString() {
    return 'Recommendation(current: $current, destination: $destination, success: $success, message: $message, waypoints: $waypoints, polylineInfo: $polylineInfo)';
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
      PolylineInformation polylineInfo});

  @override
  $PolylineInformationCopyWith<$Res> get polylineInfo;
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
    Object? polylineInfo = null,
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
      polylineInfo: null == polylineInfo
          ? _self.polylineInfo
          : polylineInfo // ignore: cast_nullable_to_non_nullable
              as PolylineInformation,
    ));
  }

  /// Create a copy of Recommendation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PolylineInformationCopyWith<$Res> get polylineInfo {
    return $PolylineInformationCopyWith<$Res>(_self.polylineInfo, (value) {
      return _then(_self.copyWith(polylineInfo: value));
    });
  }
}

// dart format on
