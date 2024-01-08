// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_pedia_description_loaded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HealthPediaDescriptionLoadedImpl _$$HealthPediaDescriptionLoadedImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthPediaDescriptionLoadedImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              HealthDescriptionPediaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HealthPediaDescriptionLoadedImplToJson(
        _$HealthPediaDescriptionLoadedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$HealthDescriptionPediaDataImpl _$$HealthDescriptionPediaDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthDescriptionPediaDataImpl(
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
      status: json['status'] as bool?,
      like: (json['like'] as List<dynamic>?)?.map((e) => e as String).toList(),
      views: json['views'] as int?,
      metatag: json['metatag'] as String?,
      metadiscription: json['metadiscription'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      isDeleted: json['isDeleted'] as bool?,
      isDraft: json['isDraft'] as bool?,
    );

Map<String, dynamic> _$$HealthDescriptionPediaDataImplToJson(
        _$HealthDescriptionPediaDataImpl instance) =>
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
      'status': instance.status,
      'like': instance.like,
      'views': instance.views,
      'metatag': instance.metatag,
      'metadiscription': instance.metadiscription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'isDeleted': instance.isDeleted,
      'isDraft': instance.isDraft,
    };
