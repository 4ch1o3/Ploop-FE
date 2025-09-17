import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

class LatLngConverter implements JsonConverter<LatLng, List<dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(List<dynamic> json) {
    if (json.length >= 2) {
      return LatLng(
        (json[0] as num).toDouble(), // lat
        (json[1] as num).toDouble(), // lng
      );
    }
    return const LatLng(0, 0);
  }

  @override
  List<dynamic> toJson(LatLng object) => [
        object.latitude,
        object.longitude,
      ];
}

class LatLngMapConverter
    implements JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngMapConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    if (json.length >= 2) {
      return LatLng(
        (json['lat'] as num).toDouble(), // lat
        (json['lng'] as num).toDouble(), // lng
      );
    }
    return const LatLng(0, 0);
  }

  @override
  Map<String, dynamic> toJson(LatLng object) => {
        'lat': object.latitude,
        'lng': object.longitude,
      };
}

class LatLngListConverter
    implements JsonConverter<List<LatLng>, List<dynamic>> {
  const LatLngListConverter();

  @override
  List<LatLng> fromJson(List<dynamic> json) =>
      json.map((e) => const LatLngConverter().fromJson(e)).toList();

  @override
  List<dynamic> toJson(List<LatLng> object) =>
      object.map((e) => const LatLngConverter().toJson(e)).toList();
}

class LatLngMapListConverter
    implements JsonConverter<List<LatLng>, List<dynamic>> {
  const LatLngMapListConverter();

  @override
  List<LatLng> fromJson(List<dynamic> json) {
    return json
        .map((e) =>
            const LatLngMapConverter().fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  List<dynamic> toJson(List<LatLng> object) {
    return object.map((e) => const LatLngMapConverter().toJson(e)).toList();
  }
}
