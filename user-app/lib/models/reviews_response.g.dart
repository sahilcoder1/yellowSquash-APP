// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewsResponseImpl _$$ReviewsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewsResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : ProrgramReviewData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewsResponseImplToJson(
        _$ReviewsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$ProrgramReviewDataImpl _$$ProrgramReviewDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProrgramReviewDataImpl(
      programReview: (json['programReview'] as List<dynamic>?)
          ?.map((e) => ProgramReview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProrgramReviewDataImplToJson(
        _$ProrgramReviewDataImpl instance) =>
    <String, dynamic>{
      'programReview': instance.programReview,
    };

_$ProgramReviewImpl _$$ProgramReviewImplFromJson(Map<String, dynamic> json) =>
    _$ProgramReviewImpl(
      comment: json['comment'] as String?,
      commentPhoto: json['commentPhoto'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ProgramReviewImplToJson(_$ProgramReviewImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'commentPhoto': instance.commentPhoto,
      'id': instance.id,
    };
