// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinars_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarsDescriptionImpl _$$WebinarsDescriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarsDescriptionImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WebinarDescriptionData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarsDescriptionImplToJson(
        _$WebinarsDescriptionImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
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
      sessionDurationinHour: json['sessionDurationinHour'] as String?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      webinarDescription: json['webinarDescription'] as String?,
      sessionwillCover: (json['sessionwillCover'] as List<dynamic>?)
          ?.map((e) => SessionwillCover.fromJson(e as Map<String, dynamic>))
          .toList(),
      youwillLearn: (json['youwillLearn'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      whoisitFor: (json['whoisitFor'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      price: json['price'] as int?,
      latestWhatsappLink: json['latestWhatsappLink'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      isDeleted: json['isDeleted'] as bool?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
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
      'sessionDurationinHour': instance.sessionDurationinHour,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'webinarDescription': instance.webinarDescription,
      'sessionwillCover': instance.sessionwillCover,
      'youwillLearn': instance.youwillLearn,
      'whoisitFor': instance.whoisitFor,
      'price': instance.price,
      'latestWhatsappLink': instance.latestWhatsappLink,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
      'isDeleted': instance.isDeleted,
      'status': instance.status,
    };

_$SessionwillCoverImpl _$$SessionwillCoverImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionwillCoverImpl(
      heading: json['heading'] as String?,
      defination: json['defination'] as String?,
    );

Map<String, dynamic> _$$SessionwillCoverImplToJson(
        _$SessionwillCoverImpl instance) =>
    <String, dynamic>{
      'heading': instance.heading,
      'defination': instance.defination,
    };
