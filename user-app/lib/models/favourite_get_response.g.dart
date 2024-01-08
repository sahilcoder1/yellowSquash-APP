// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavouriteGetResponseImpl _$$FavouriteGetResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FavouriteGetResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : FavData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FavouriteGetResponseImplToJson(
        _$FavouriteGetResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      programId: (json['programId'] as List<dynamic>?)
          ?.map((e) => ProgramId.fromJson(e as Map<String, dynamic>))
          .toList(),
      webinarId: (json['webinarId'] as List<dynamic>?)
          ?.map((e) => WebinarId.fromJson(e as Map<String, dynamic>))
          .toList(),
      expertId: (json['expertId'] as List<dynamic>?)
          ?.map((e) => ExpertId.fromJson(e as Map<String, dynamic>))
          .toList(),
      healthPediaId: (json['healthPediaId'] as List<dynamic>?)
          ?.map((e) => HealthPediaId.fromJson(e as Map<String, dynamic>))
          .toList(),
      videohealthPediaId: (json['videohealthPediaId'] as List<dynamic>?)
          ?.map((e) => VideohealthPediaId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'webinarId': instance.webinarId,
      'expertId': instance.expertId,
      'healthPediaId': instance.healthPediaId,
      'videohealthPediaId': instance.videohealthPediaId,
    };

_$ExpertIdImpl _$$ExpertIdImplFromJson(Map<String, dynamic> json) =>
    _$ExpertIdImpl(
      id: json['_id'] as String?,
      expertProfile: json['expertProfile'] as String?,
      expertCategory: json['expertCategory'] as String?,
      expertName: json['expertName'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      qualification: json['qualification'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$ExpertIdImplToJson(_$ExpertIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'expertProfile': instance.expertProfile,
      'expertCategory': instance.expertCategory,
      'expertName': instance.expertName,
      'expertDesignation': instance.expertDesignation,
      'qualification': instance.qualification,
      'language': instance.language,
    };

_$HealthPediaIdImpl _$$HealthPediaIdImplFromJson(Map<String, dynamic> json) =>
    _$HealthPediaIdImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      category: json['category'] as String?,
      bannerImageUrl: json['bannerImageUrl'] as String?,
      expertName: json['expertName'] as String?,
      expertImageUrl: json['expertImageUrl'] as String?,
    );

Map<String, dynamic> _$$HealthPediaIdImplToJson(_$HealthPediaIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'category': instance.category,
      'bannerImageUrl': instance.bannerImageUrl,
      'expertName': instance.expertName,
      'expertImageUrl': instance.expertImageUrl,
    };

_$ProgramIdImpl _$$ProgramIdImplFromJson(Map<String, dynamic> json) =>
    _$ProgramIdImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      expert: json['expert'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertImage: json['expertImage'] as String?,
      programCategory: json['programCategory'] as String?,
      fordeseases: json['fordeseases'] as String?,
    );

Map<String, dynamic> _$$ProgramIdImplToJson(_$ProgramIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'expert': instance.expert,
      'expertDesignation': instance.expertDesignation,
      'expertImage': instance.expertImage,
      'programCategory': instance.programCategory,
      'fordeseases': instance.fordeseases,
    };

_$VideohealthPediaIdImpl _$$VideohealthPediaIdImplFromJson(
        Map<String, dynamic> json) =>
    _$VideohealthPediaIdImpl(
      id: json['_id'] as String?,
      blogVideo: json['blogVideo'] as String?,
      blogthumbnail: json['blogthumbnail'] as String?,
      blogCategory: json['blogCategory'] as String?,
      blogTitle: json['blogTitle'] as String?,
      blogBy: json['blogBy'] as String?,
    );

Map<String, dynamic> _$$VideohealthPediaIdImplToJson(
        _$VideohealthPediaIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'blogVideo': instance.blogVideo,
      'blogthumbnail': instance.blogthumbnail,
      'blogCategory': instance.blogCategory,
      'blogTitle': instance.blogTitle,
      'blogBy': instance.blogBy,
    };

_$WebinarIdImpl _$$WebinarIdImplFromJson(Map<String, dynamic> json) =>
    _$WebinarIdImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      webinarCategory: json['webinarCategory'] as String?,
      webinarTitle: json['webinarTitle'] as String?,
      expertName: json['expertName'] as String?,
      expertImage: json['expertImage'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      webinarVideo: json['webinarVideo'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] as String?,
      starttime: json['starttime'] as String?,
    );

Map<String, dynamic> _$$WebinarIdImplToJson(_$WebinarIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'webinarCategory': instance.webinarCategory,
      'webinarTitle': instance.webinarTitle,
      'expertName': instance.expertName,
      'expertImage': instance.expertImage,
      'expertDesignation': instance.expertDesignation,
      'webinarVideo': instance.webinarVideo,
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
      'starttime': instance.starttime,
    };
