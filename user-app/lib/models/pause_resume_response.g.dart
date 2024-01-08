// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pause_resume_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PauseResumeResponseImpl _$$PauseResumeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PauseResumeResponseImpl(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PauseResumeResponseImplToJson(
        _$PauseResumeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      id: json['id'] as String?,
      v: json['v'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'id': instance.id,
      'v': instance.v,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      programId: json['programId'] as String?,
      batchId: json['batchId'] as String?,
      userId: json['userId'] as String?,
      profileId: json['profileId'] as String?,
      planType: json['planType'] as String?,
      planSubType: json['planSubType'] as String?,
      status: json['status'] as String?,
      continutyStartDate: json['continutyStartDate'],
      continutyEndDate: json['continutyEndDate'],
      continutyCounter: json['continutyCounter'] as int?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'batchId': instance.batchId,
      'userId': instance.userId,
      'profileId': instance.profileId,
      'planType': instance.planType,
      'planSubType': instance.planSubType,
      'status': instance.status,
      'continutyStartDate': instance.continutyStartDate,
      'continutyEndDate': instance.continutyEndDate,
      'continutyCounter': instance.continutyCounter,
    };
