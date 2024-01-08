// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarResponseImpl _$$WebinarResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WebinarData.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WebinarResponseImplToJson(
        _$WebinarResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'category': instance.category,
    };
