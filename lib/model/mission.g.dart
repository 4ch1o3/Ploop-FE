// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Mission _$MissionFromJson(Map<String, dynamic> json) => _Mission(
      userMissionId: (json['userMissionId'] as num).toInt(),
      category: json['category'] as String,
      requiredCount: (json['requiredCount'] as num).toInt(),
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$MissionToJson(_Mission instance) => <String, dynamic>{
      'userMissionId': instance.userMissionId,
      'category': instance.category,
      'requiredCount': instance.requiredCount,
      'verified': instance.verified,
    };
