// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileUpdateResponseImpl _$$UserProfileUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileUpdateResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileUpdateResponseImplToJson(
        _$UserProfileUpdateResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      observer: json['observer'] == null
          ? null
          : Observer.fromJson(json['observer'] as Map<String, dynamic>),
      userType: json['userType'],
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      age: json['age'] as String?,
      condition: json['condition'] as String?,
      gender: json['gender'] as String?,
      interests: json['interests'] as String?,
      location: json['location'] as String?,
      profilePicture: json['profilePicture'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'observer': instance.observer,
      'userType': instance.userType,
      'address': instance.address,
      'age': instance.age,
      'condition': instance.condition,
      'gender': instance.gender,
      'interests': instance.interests,
      'location': instance.location,
      'profilePicture': instance.profilePicture,
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
