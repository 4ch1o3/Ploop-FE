import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ploop_fe/model/latlng_converter.dart';

part 'recommendation_model.freezed.dart';
part 'recommendation_model.g.dart';

@freezed
abstract class PolylineInformation with _$PolylineInformation {
  const factory PolylineInformation({
    required String encodedPolyline,
    required int distanceMeters,
    required String duration,
  }) = _PolylineInformation;

  factory PolylineInformation.fromJson(Map<String, dynamic> json) =>
      _$PolylineInformationFromJson(json);
}

@freezed
abstract class Recommendation with _$Recommendation {
  const factory Recommendation({
    @LatLngConverter() required LatLng current,
    @LatLngConverter() required LatLng destination,
    required bool success,
    required String message,
    @LatLngConverter() required List<LatLng> waypoints,
    required PolylineInformation polylineInfo,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}
