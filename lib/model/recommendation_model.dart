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
    @LatLngMapConverter() required LatLng current,
    @LatLngMapConverter() LatLng? destination,
    required bool success,
    required String message,
    @LatLngMapListConverter() required List<LatLng> waypoints,
    @JsonKey(name: 'route') required PolylineInformation polylineInfo,
  }) = _Recommendation;

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}
