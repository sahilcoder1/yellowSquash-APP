

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_byprofile_userid.freezed.dart';
part 'user_byprofile_userid.g.dart';

UserByprofileUserid userByprofileUseridFromJson(String str) =>
    UserByprofileUserid.fromJson(json.decode(str));

String userByprofileUseridToJson(UserByprofileUserid data) =>
    json.encode(data.toJson());

@freezed
class UserByprofileUserid with _$UserByprofileUserid {
  const factory UserByprofileUserid({
    bool? status,
    String? message,
    List<UserProfileData>? data,
  }) = _UserByprofileUserid;

  factory UserByprofileUserid.fromJson(Map<String, dynamic> json) =>
      _$UserByprofileUseridFromJson(json);
}

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    ChildFavorite? childFavorite,
    String? fullName,
    String? emailId,
    String? phoneNumber,
    int? age,
    String? gender,
    Address? address,
    String? profileId,
    String? image,
    List<String>? condition,
    List<String>? interests,
    String? id,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) => _$UserProfileDataFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    String? flatNo,
    String? city,
    String? pincode,
    String? state,
    String? country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
class ChildFavorite with _$ChildFavorite {
  const factory ChildFavorite({
    List<dynamic>? programId,
    List<dynamic>? webinarId,
    List<dynamic>? expertId,
    List<dynamic>? healthPediaId,
    List<dynamic>? videohealthPediaId,
  }) = _ChildFavorite;

  factory ChildFavorite.fromJson(Map<String, dynamic> json) =>
      _$ChildFavoriteFromJson(json);
}
