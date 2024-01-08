import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_data.freezed.dart';
part 'user_profile_data.g.dart';

UserProfileData userProfileDataFromJson(String str) =>
    UserProfileData.fromJson(json.decode(str));

String userProfileDataToJson(UserProfileData data) =>
    json.encode(data.toJson());

@freezed
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    String? message,
    bool? status,
    List<SwitchUserData>? data,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}

@freezed
class SwitchUserData with _$SwitchUserData {
  const factory SwitchUserData({
    String? fullname,
    dynamic nickName,
    String? profileId,
  }) = _Datum;

  factory SwitchUserData.fromJson(Map<String, dynamic> json) =>
      _$SwitchUserDataFromJson(json);
}
