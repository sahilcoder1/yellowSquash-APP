// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_update_second.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileUpdateSecondImpl _$$UserProfileUpdateSecondImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileUpdateSecondImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileUpdateSecondData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileUpdateSecondImplToJson(
        _$UserProfileUpdateSecondImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserProfileUpdateSecondDataImpl _$$UserProfileUpdateSecondDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileUpdateSecondDataImpl(
      favorite: json['favorite'] == null
          ? null
          : Favorite.fromJson(json['favorite'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: json['role'] as String?,
      observer: json['observer'] == null
          ? null
          : Observer.fromJson(json['observer'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      location: json['location'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$UserProfileUpdateSecondDataImplToJson(
        _$UserProfileUpdateSecondDataImpl instance) =>
    <String, dynamic>{
      'favorite': instance.favorite,
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'condition': instance.condition,
      'interests': instance.interests,
      'role': instance.role,
      'observer': instance.observer,
      'address': instance.address,
      'age': instance.age,
      'gender': instance.gender,
      'location': instance.location,
      'timezone': instance.timezone,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      flatNoStreetName: json['flatNoStreetName'] as String?,
      cityTownDistrict: json['cityTownDistrict'] as String?,
      pincode: json['pincode'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'flatNoStreetName': instance.flatNoStreetName,
      'cityTownDistrict': instance.cityTownDistrict,
      'pincode': instance.pincode,
      'state': instance.state,
      'country': instance.country,
    };

_$FavoriteImpl _$$FavoriteImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteImpl(
      programId: (json['programId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      webinarId: json['webinarId'] as List<dynamic>?,
      expertId: json['expertId'] as List<dynamic>?,
      healthPediaId: json['healthPediaId'] as List<dynamic>?,
      videohealthPediaId: (json['videohealthPediaId'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FavoriteImplToJson(_$FavoriteImpl instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'webinarId': instance.webinarId,
      'expertId': instance.expertId,
      'healthPediaId': instance.healthPediaId,
      'videohealthPediaId': instance.videohealthPediaId,
    };

_$ObserverImpl _$$ObserverImplFromJson(Map<String, dynamic> json) =>
    _$ObserverImpl(
      observer1: json['observer1'] == null
          ? null
          : Observer1.fromJson(json['observer1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ObserverImplToJson(_$ObserverImpl instance) =>
    <String, dynamic>{
      'observer1': instance.observer1,
    };

_$Observer1Impl _$$Observer1ImplFromJson(Map<String, dynamic> json) =>
    _$Observer1Impl(
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      relation: json['relation'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$Observer1ImplToJson(_$Observer1Impl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'relation': instance.relation,
      'password': instance.password,
    };
