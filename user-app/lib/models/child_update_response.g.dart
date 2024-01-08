// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildUpdateResponseImpl _$$ChildUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildUpdateResponseImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              ChildUpdateResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChildUpdateResponseImplToJson(
        _$ChildUpdateResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      childFavorite: json['childFavorite'] == null
          ? null
          : ChildFavorite.fromJson(
              json['childFavorite'] as Map<String, dynamic>),
      fullName: json['fullName'] as String?,
      emailId: json['emailId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      profileId: json['profileId'] as String?,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'childFavorite': instance.childFavorite,
      'fullName': instance.fullName,
      'emailId': instance.emailId,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'profileId': instance.profileId,
      'condition': instance.condition,
      'interests': instance.interests,
      '_id': instance.id,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      flatNo: json['flatNo'] as String?,
      city: json['city'] as String?,
      pincode: json['pincode'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'flatNo': instance.flatNo,
      'city': instance.city,
      'pincode': instance.pincode,
      'state': instance.state,
      'country': instance.country,
    };

_$ChildFavoriteImpl _$$ChildFavoriteImplFromJson(Map<String, dynamic> json) =>
    _$ChildFavoriteImpl(
      programId: json['programId'] as List<dynamic>?,
      webinarId: json['webinarId'] as List<dynamic>?,
      expertId: json['expertId'] as List<dynamic>?,
      healthPediaId: json['healthPediaId'] as List<dynamic>?,
      videohealthPediaId: json['videohealthPediaId'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ChildFavoriteImplToJson(_$ChildFavoriteImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'webinarId': instance.webinarId,
      'expertId': instance.expertId,
      'healthPediaId': instance.healthPediaId,
      'videohealthPediaId': instance.videohealthPediaId,
    };
