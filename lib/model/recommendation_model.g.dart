// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PolylineInformation _$PolylineInformationFromJson(Map<String, dynamic> json) =>
    _PolylineInformation(
      encodedPolyline: json['encodedPolyline'] as String,
      distanceMeters: (json['distanceMeters'] as num).toInt(),
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$PolylineInformationToJson(
        _PolylineInformation instance) =>
    <String, dynamic>{
      'encodedPolyline': instance.encodedPolyline,
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
    };

_Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    _Recommendation(
      current: const LatLngConverter().fromJson(json['current'] as List),
      destination:
          const LatLngConverter().fromJson(json['destination'] as List),
      success: json['success'] as bool,
      message: json['message'] as String,
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => const LatLngConverter().fromJson(e as List))
          .toList(),
      polylineInfo: PolylineInformation.fromJson(
          json['polylineInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecommendationToJson(_Recommendation instance) =>
    <String, dynamic>{
      'current': const LatLngConverter().toJson(instance.current),
      'destination': const LatLngConverter().toJson(instance.destination),
      'success': instance.success,
      'message': instance.message,
      'waypoints':
          instance.waypoints.map(const LatLngConverter().toJson).toList(),
      'polylineInfo': instance.polylineInfo,
    };
