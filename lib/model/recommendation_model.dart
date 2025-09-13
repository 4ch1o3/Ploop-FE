import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ploop_fe/model/latlng_converter.dart';

part 'recommendation_model.freezed.dart';
part 'recommendation_model.g.dart';

@freezed
abstract class RouteMetaInformation with _$RouteMetaInformation {
  const factory RouteMetaInformation({
    required String encodedPolyline,
    required int distanceMeters,
    required String duration,
  }) = _RouteMetaInformation;
}

@freezed
abstract class Recommendation with _$Recommendation {
  const factory Recommendation({
    @LatLngConverter() required LatLng current,
    @LatLngConverter() required LatLng destination,
    required bool success,
    required String message,
    @LatLngConverter() required List<LatLng> waypoints,
    @JsonKey(includeFromJson: false, includeToJson: false)
    RouteMetaInformation? meta,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}
