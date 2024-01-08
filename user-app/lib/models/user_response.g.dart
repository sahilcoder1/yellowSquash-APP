// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'token': instance.token,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      isParent: json['isParent'] as bool?,
      profileid: json['profileid'] as String?,
      profilePicture: json['profilePicture'] as String?,
      patientLength: json['patientLength'] as int?,
      index: json['index'] as int?,
      role: json['role'] as String?,
      patientDetails: json['patientDetails'],
      observer: json['observer'],
      address: json['address'],
      favorite: json['favorite'] == null
          ? null
          : Favorite.fromJson(json['favorite'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'isParent': instance.isParent,
      'profileid': instance.profileid,
      'profilePicture': instance.profilePicture,
      'patientLength': instance.patientLength,
      'index': instance.index,
      'role': instance.role,
      'patientDetails': instance.patientDetails,
      'observer': instance.observer,
      'address': instance.address,
      'favorite': instance.favorite,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
    };

_$FavoriteImpl _$$FavoriteImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImpl(
      programId: json['programId'] as List<dynamic>?,
      webinarId: json['webinarId'] as List<dynamic>?,
      expertId: json['expertId'] as List<dynamic>?,
      healthPediaId: json['healthPediaId'] as List<dynamic>?,
      videohealthPediaId: json['videohealthPediaId'] as List<dynamic>?,
    );

Map<String, dynamic> _$$FavoriteImplToJson(_$FavoriteImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'webinarId': instance.webinarId,
      'expertId': instance.expertId,
      'healthPediaId': instance.healthPediaId,
      'videohealthPediaId': instance.videohealthPediaId,
    };
