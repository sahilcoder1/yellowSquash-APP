// ignore_for_file: eol_at_end_of_file

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_update_response.freezed.dart';
part 'user_profile_update_response.g.dart';

UserProfileUpdateResponse userProfileUpdateResponseFromJson(String str) =>
    UserProfileUpdateResponse.fromJson(json.decode(str));

String userProfileUpdateResponseToJson(UserProfileUpdateResponse data) =>
    json.encode(data.toJson());

@freezed
class UserProfileUpdateResponse with _$UserProfileUpdateResponse {
  const factory UserProfileUpdateResponse({
    bool? status,
    String? message,
    UserProfileData? data,
  }) = _UserProfileUpdateResponse;

  factory UserProfileUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileUpdateResponseFromJson(json);
}

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    @JsonKey(name: '_id') String? id,
    String? fullName,
    String? email,
    String? phone,
    String? role,
    Observer? observer,
    dynamic userType,
    Address? address,
    String? age,
    String? condition,
    String? gender,
    String? interests,
    String? location,
    String? profilePicture,
    String? timezone,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? flatNoStreetName,
    String? cityTownDistrict,
    String? pincode,
    String? state,
    String? country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class Observer with _$Observer {
  const factory Observer({
    Observer1? observer1,
  }) = _Observer;

  factory Observer.fromJson(Map<String, dynamic> json) =>
      _$ObserverFromJson(json);
}

@freezed
class Observer1 with _$Observer1 {
  const factory Observer1({
    String? fullName,
    String? phoneNumber,
    String? relation,
    String? password,
  }) = _Observer1;

  factory Observer1.fromJson(Map<String, dynamic> json) =>
      _$Observer1FromJson(json);
}




