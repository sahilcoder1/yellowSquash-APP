// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpertResponseImpl _$$ExpertResponseImplFromJson(Map<String, dynamic> json) =>
    _$ExpertResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExpertData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ExpertResponseImplToJson(
        _$ExpertResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };

_$ExpertDataImpl _$$ExpertDataImplFromJson(Map<String, dynamic> json) =>
    _$ExpertDataImpl(
      id: json['_id'] as String?,
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

Map<String, dynamic> _$$ExpertDataImplToJson(_$ExpertDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
