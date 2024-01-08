// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_webinar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyWebinarResponseImpl _$$MyWebinarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MyWebinarResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MyWebinarData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyWebinarResponseImplToJson(
        _$MyWebinarResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      webinarCategory: json['webinarCategory'] as String?,
      webinarTitle: json['webinarTitle'] as String?,
      expertName: json['expertName'] as String?,
      expertImage: json['expertImage'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertCategory: json['expertCategory'] as String?,
      expertDescription: json['expertDescription'] as String?,
      webinarVideo: json['webinarVideo'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] as String?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      webinarDescription: json['webinarDescription'] as String?,
      youwillLearn: (json['youwillLearn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      whoisitFor: (json['whoisitFor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      experienceImage: json['experienceImage'] as String?,
      experienceName: json['experienceName'] as String?,
      experienceDescription: json['experienceDescription'] as String?,
      experienceVideo: json['experienceVideo'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'webinarCategory': instance.webinarCategory,
      'webinarTitle': instance.webinarTitle,
      'expertName': instance.expertName,
      'expertImage': instance.expertImage,
      'expertDesignation': instance.expertDesignation,
      'expertCategory': instance.expertCategory,
      'expertDescription': instance.expertDescription,
      'webinarVideo': instance.webinarVideo,
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'webinarDescription': instance.webinarDescription,
      'youwillLearn': instance.youwillLearn,
      'whoisitFor': instance.whoisitFor,
      'experienceImage': instance.experienceImage,
      'experienceName': instance.experienceName,
      'experienceDescription': instance.experienceDescription,
      'experienceVideo': instance.experienceVideo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'price': instance.price,
    };
