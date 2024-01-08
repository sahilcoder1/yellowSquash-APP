// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_description_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpertDescriptionResponseImpl _$$ExpertDescriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpertDescriptionResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ExpertDescriptionData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpertDescriptionResponseImplToJson(
        _$ExpertDescriptionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ExpertDescriptionDataImpl _$$ExpertDescriptionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpertDescriptionDataImpl(
      id: json['id'] as String?,
      expertProfile: json['expertProfile'] as String?,
      expertCategory: json['expertCategory'] as String?,
      expertName: json['expertName'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertDescription: json['expertDescription'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$ExpertDescriptionDataImplToJson(
        _$ExpertDescriptionDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expertProfile': instance.expertProfile,
      'expertCategory': instance.expertCategory,
      'expertName': instance.expertName,
      'expertDesignation': instance.expertDesignation,
      'expertDescription': instance.expertDescription,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
