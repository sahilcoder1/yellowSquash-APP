// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyProgramImpl _$$MyProgramImplFromJson(Map<String, dynamic> json) =>
    _$MyProgramImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MyProgramData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyProgramImplToJson(_$MyProgramImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$MyProgramDataImpl _$$MyProgramDataImplFromJson(Map<String, dynamic> json) =>
    _$MyProgramDataImpl(
      id: json['_id'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      expert: json['expert'] as String?,
      expertDesignation: json['expertDesignation'] as String?,
      expertImage: json['expertImage'] as String?,
      programCategory: json['programCategory'] as String?,
    );

Map<String, dynamic> _$$MyProgramDataImplToJson(_$MyProgramDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'expert': instance.expert,
      'expertDesignation': instance.expertDesignation,
      'expertImage': instance.expertImage,
      'programCategory': instance.programCategory,
    };
