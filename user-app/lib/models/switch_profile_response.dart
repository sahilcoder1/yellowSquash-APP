

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_profile_response.freezed.dart';
part 'switch_profile_response.g.dart';

SwitchProfileResponse switchProfileResponseFromJson(String str) =>
    SwitchProfileResponse.fromJson(json.decode(str));

String switchProfileResponseToJson(SwitchProfileResponse data) =>
    json.encode(data.toJson());

@freezed
class SwitchProfileResponse with _$SwitchProfileResponse {
  const factory SwitchProfileResponse({
  String? message,
    bool? status,
    List<SwitchProfileData>? data,
  }) = _SwitchProfileResponse;

  factory SwitchProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileResponseFromJson(json);
}

@freezed
class SwitchProfileData with _$SwitchProfileData {
  const factory SwitchProfileData({
    String? fullname,
    // dynamic nickName,
    String? profileId,
  }) = _Datum;

  factory SwitchProfileData.fromJson(Map<String, dynamic> json) =>
      _$SwitchProfileDataFromJson(json);
}
