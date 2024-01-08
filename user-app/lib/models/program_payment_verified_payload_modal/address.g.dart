// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      flatNoStreetName: json['flatNo/StreetName'] as String?,
      cityTownDistrict: json['City/Town/District'] as String?,
      pincode: json['pincode'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'flatNo/StreetName': instance.flatNoStreetName,
      'City/Town/District': instance.cityTownDistrict,
      'pincode': instance.pincode,
      'state': instance.state,
      'country': instance.country,
    };
