// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_pedia_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthPediaResponseImpl _$$HealthPediaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthPediaResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HealthPediaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HealthPediaResponseImplToJson(
        _$HealthPediaResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };

_$HealthPediaDataImpl _$$HealthPediaDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthPediaDataImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      category: json['category'] as String?,
      summary: json['summary'] as String?,
      bannerImageUrl: json['bannerImageUrl'] as String?,
      articleBody: json['articleBody'] as String?,
      expertName: json['expertName'] as String?,
      expertImageUrl: json['expertImageUrl'] as String?,
      slug: json['slug'] as String?,
      isDraft: json['isDraft'] as bool?,
      status: json['status'] as bool?,
      like: (json['like'] as List<dynamic>?)?.map((e) => e as String).toList(),
      views: json['views'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$HealthPediaDataImplToJson(
        _$HealthPediaDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'category': instance.category,
      'summary': instance.summary,
      'bannerImageUrl': instance.bannerImageUrl,
      'articleBody': instance.articleBody,
      'expertName': instance.expertName,
      'expertImageUrl': instance.expertImageUrl,
      'slug': instance.slug,
      'isDraft': instance.isDraft,
      'status': instance.status,
      'like': instance.like,
      'views': instance.views,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
