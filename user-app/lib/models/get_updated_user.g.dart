// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_updated_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUpdatedUserImpl _$$GetUpdatedUserImplFromJson(Map<String, dynamic> json) =>
    _$GetUpdatedUserImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : getUpdatedData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetUpdatedUserImplToJson(
        _$GetUpdatedUserImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      favorite: json['favorite'] == null
          ? null
          : Favorite.fromJson(json['favorite'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
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
      patientDetails: (json['patientDetails'] as List<dynamic>?)
          ?.map((e) => PatientDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int?,
      location: json['location'] as String?,
      profilePicture: json['profilePicture'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'favorite': instance.favorite,
      '_id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'age': instance.age,
      'gender': instance.gender,
      'condition': instance.condition,
      'interests': instance.interests,
      'role': instance.role,
      'observer': instance.observer,
      'address': instance.address,
      'patientDetails': instance.patientDetails,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'v': instance.v,
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

_$PatientDetailImpl _$$PatientDetailImplFromJson(Map<String, dynamic> json) =>
    _$PatientDetailImpl(
      childFavorite: json['childFavorite'] == null
          ? null
          : Favorite.fromJson(json['childFavorite'] as Map<String, dynamic>),
      fullName: json['fullName'] as String?,
      emailId: json['emailId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      age: json['age'] as int?,
      gender: json['gender'],
      address: json['address'],
      profileId: json['profileId'] as String?,
      image: json['image'] as String?,
      condition: json['condition'] as List<dynamic>?,
      interests: json['interests'] as List<dynamic>?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PatientDetailImplToJson(_$PatientDetailImpl instance) =>
    <String, dynamic>{
      'childFavorite': instance.childFavorite,
      'fullName': instance.fullName,
      'emailId': instance.emailId,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'gender': instance.gender,
      'address': instance.address,
      'profileId': instance.profileId,
      'image': instance.image,
      'condition': instance.condition,
      'interests': instance.interests,
      'id': instance.id,
    };
