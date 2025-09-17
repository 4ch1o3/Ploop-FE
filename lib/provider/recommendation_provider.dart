import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:ploop_fe/model/recommendation_model.dart';
import 'package:ploop_fe/provider/jwt_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recommendation_provider.g.dart';

@riverpod
Future<Recommendation?> routeRecommendation(Ref ref, LatLng current) async {
  final jwt = ref.read(jwtNotifierProvider).jwt;

  /// NOTE: This coordinate points in front of Tokyo Station.
  /// - This is only for demonstration.
  /// - Remove this line after demonstration, and when path creating in Korea using Routes API is enabled.
  current = const LatLng(35.680640, 139.763095);

  if (jwt != null) {
    final url = Uri.parse('https://api.ploop.shop/api/map/route/recommend');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $jwt',
    };
    final body = jsonEncode({
      "current": {"lat": current.latitude, "lng": current.longitude},
      "destination": null
    });
    debugPrint(body);
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final responseData = jsonDecode(utf8.decode(response.bodyBytes));
      debugPrint('OK: $responseData');

      if (responseData != null) {
        return Recommendation.fromJson(responseData);
      } else {
        debugPrint('null responseData');
      }
    } else {
      debugPrint('${response.statusCode}: ${response.body}');
    }
  } else {
    debugPrint('error: null jwt');
  }
  return null;
}
