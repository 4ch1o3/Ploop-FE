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
      current: const LatLngMapConverter()
          .fromJson(json['current'] as Map<String, dynamic>),
      destination: _$JsonConverterFromJson<Map<String, dynamic>, LatLng>(
          json['destination'], const LatLngMapConverter().fromJson),
      success: json['success'] as bool,
      message: json['message'] as String,
      waypoints:
          const LatLngMapListConverter().fromJson(json['waypoints'] as List),
      polylineInfo:
          PolylineInformation.fromJson(json['route'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecommendationToJson(_Recommendation instance) =>
    <String, dynamic>{
      'current': const LatLngMapConverter().toJson(instance.current),
      'destination': _$JsonConverterToJson<Map<String, dynamic>, LatLng>(
          instance.destination, const LatLngMapConverter().toJson),
      'success': instance.success,
      'message': instance.message,
      'waypoints': const LatLngMapListConverter().toJson(instance.waypoints),
      'route': instance.polylineInfo,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
