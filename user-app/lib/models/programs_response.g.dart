// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramsResponseImpl _$$ProgramsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramsResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProgramData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ProgramsResponseImplToJson(
        _$ProgramsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };

_$ProgramDataImpl _$$ProgramDataImplFromJson(Map<String, dynamic> json) =>
    _$ProgramDataImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      programintovideourl: json['programintovideourl'] as String?,
      videoId: json['videoId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      imageId: json['imageId'] as int?,
      expert: json['expert'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertImage: json['expertImage'] as String?,
      author: json['author'] as String?,
      programCategory: json['programCategory'] as String?,
      enrolledUser: json['enrolledUser'] as int?,
      status: json['status'] as String?,
      howItWorks: json['howItWorks'] as String?,
      whatsappLink: json['whatsappLink'] as String?,
      intakeFormLink: json['intakeFormLink'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$ProgramDataImplToJson(_$ProgramDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'rating': instance.rating,
      'programintovideourl': instance.programintovideourl,
      'videoId': instance.videoId,
      'imageUrl': instance.imageUrl,
      'imageId': instance.imageId,
      'expert': instance.expert,
      'expertDesignation': instance.expertDesignation,
      'expertImage': instance.expertImage,
      'author': instance.author,
      'programCategory': instance.programCategory,
      'enrolledUser': instance.enrolledUser,
      'status': instance.status,
      'howItWorks': instance.howItWorks,
      'whatsappLink': instance.whatsappLink,
      'intakeFormLink': instance.intakeFormLink,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };
