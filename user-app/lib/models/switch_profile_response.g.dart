// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchProfileResponseImpl _$$SwitchProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SwitchProfileResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SwitchProfileData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SwitchProfileResponseImplToJson(
        _$SwitchProfileResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      fullname: json['fullname'] as String?,
      profileId: json['profileId'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'profileId': instance.profileId,
    };
