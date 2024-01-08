// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_pediavideo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthPediavideoResponseImpl _$$HealthPediavideoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthPediavideoResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HealthPediaVideoData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HealthPediavideoResponseImplToJson(
        _$HealthPediavideoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };

_$HealthPediaVideoDataImpl _$$HealthPediaVideoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthPediaVideoDataImpl(
      id: json['id'] as String?,
      blogVideo: json['blogVideo'] as String?,
      blogCategory: json['blogCategory'] as String?,
      blogTitle: json['blogTitle'] as String?,
      blogthumbnail: json['blogthumbnail'] as String?,
      blogBy: json['blogBy'] as String?,
      status: json['status'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$HealthPediaVideoDataImplToJson(
        _$HealthPediaVideoDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blogVideo': instance.blogVideo,
      'blogCategory': instance.blogCategory,
      'blogTitle': instance.blogTitle,
      'blogthumbnail': instance.blogthumbnail,
      'blogBy': instance.blogBy,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
