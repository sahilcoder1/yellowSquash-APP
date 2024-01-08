// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_get_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentGetResponseImpl _$$CommentGetResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentGetResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CommentGetResponseImplToJson(
        _$CommentGetResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };
