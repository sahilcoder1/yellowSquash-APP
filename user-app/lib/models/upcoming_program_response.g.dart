// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_program_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingProgramResponseImpl _$$UpcomingProgramResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingProgramResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UpcomingProgramData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpcomingProgramResponseImplToJson(
        _$UpcomingProgramResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UpcomingProgramDataImpl _$$UpcomingProgramDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcomingProgramDataImpl(
      programId: json['programId'] as String?,
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      expert: json['expert'] as String?,
      startDate: json['startDate'] as String?,
    );

Map<String, dynamic> _$$UpcomingProgramDataImplToJson(
        _$UpcomingProgramDataImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'expert': instance.expert,
      'startDate': instance.startDate,
    };
