// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Mission implements DiagnosticableTreeMixin {
  int get userMissionId;
  String get category;
  int get requiredCount;
  bool get verified;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MissionCopyWith<Mission> get copyWith =>
      _$MissionCopyWithImpl<Mission>(this as Mission, _$identity);

  /// Serializes this Mission to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Mission'))
      ..add(DiagnosticsProperty('userMissionId', userMissionId))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('requiredCount', requiredCount))
      ..add(DiagnosticsProperty('verified', verified));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Mission &&
            (identical(other.userMissionId, userMissionId) ||
                other.userMissionId == userMissionId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.requiredCount, requiredCount) ||
                other.requiredCount == requiredCount) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userMissionId, category, requiredCount, verified);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Mission(userMissionId: $userMissionId, category: $category, requiredCount: $requiredCount, verified: $verified)';
  }
}

/// @nodoc
abstract mixin class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) _then) =
      _$MissionCopyWithImpl;
  @useResult
  $Res call(
      {int userMissionId, String category, int requiredCount, bool verified});
}

/// @nodoc
class _$MissionCopyWithImpl<$Res> implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._self, this._then);

  final Mission _self;
  final $Res Function(Mission) _then;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMissionId = null,
    Object? category = null,
    Object? requiredCount = null,
    Object? verified = null,
  }) {
    return _then(_self.copyWith(
      userMissionId: null == userMissionId
          ? _self.userMissionId
          : userMissionId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      requiredCount: null == requiredCount
          ? _self.requiredCount
          : requiredCount // ignore: cast_nullable_to_non_nullable
              as int,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Mission with DiagnosticableTreeMixin implements Mission {
  const _Mission(
      {required this.userMissionId,
      required this.category,
      required this.requiredCount,
      required this.verified});
  factory _Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

  @override
  final int userMissionId;
  @override
  final String category;
  @override
  final int requiredCount;
  @override
  final bool verified;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MissionCopyWith<_Mission> get copyWith =>
      __$MissionCopyWithImpl<_Mission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MissionToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Mission'))
      ..add(DiagnosticsProperty('userMissionId', userMissionId))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('requiredCount', requiredCount))
      ..add(DiagnosticsProperty('verified', verified));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Mission &&
            (identical(other.userMissionId, userMissionId) ||
                other.userMissionId == userMissionId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.requiredCount, requiredCount) ||
                other.requiredCount == requiredCount) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userMissionId, category, requiredCount, verified);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Mission(userMissionId: $userMissionId, category: $category, requiredCount: $requiredCount, verified: $verified)';
  }
}

/// @nodoc
abstract mixin class _$MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$MissionCopyWith(_Mission value, $Res Function(_Mission) _then) =
      __$MissionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int userMissionId, String category, int requiredCount, bool verified});
}

/// @nodoc
class __$MissionCopyWithImpl<$Res> implements _$MissionCopyWith<$Res> {
  __$MissionCopyWithImpl(this._self, this._then);

  final _Mission _self;
  final $Res Function(_Mission) _then;

  /// Create a copy of Mission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userMissionId = null,
    Object? category = null,
    Object? requiredCount = null,
    Object? verified = null,
  }) {
    return _then(_Mission(
      userMissionId: null == userMissionId
          ? _self.userMissionId
          : userMissionId // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      requiredCount: null == requiredCount
          ? _self.requiredCount
          : requiredCount // ignore: cast_nullable_to_non_nullable
              as int,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
