// To parse this JSON data, do
//
//     final childUpdateResponse = childUpdateResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_update_response.freezed.dart';
part 'child_update_response.g.dart';

ChildUpdateResponse childUpdateResponseFromJson(String str) =>
    ChildUpdateResponse.fromJson(json.decode(str));

String childUpdateResponseToJson(ChildUpdateResponse data) =>
    json.encode(data.toJson());

@freezed
class ChildUpdateResponse with _$ChildUpdateResponse {
  const factory ChildUpdateResponse({
    bool? status,
    List<ChildUpdateResponseData>? data,
  }) = _ChildUpdateResponse;

  factory ChildUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ChildUpdateResponseFromJson(json);
}

@freezed
class ChildUpdateResponseData with _$ChildUpdateResponseData {
  const factory ChildUpdateResponseData({
    ChildFavorite? childFavorite,
    String? fullName,
    String? emailId,
    String? phoneNumber,
    Address? address,
    String? profileId,
    List<String>? condition,
    List<String>? interests,
    @JsonKey(name: '_id') String? id,
  }) = _Datum;

  factory ChildUpdateResponseData.fromJson(Map<String, dynamic> json) => _$ChildUpdateResponseDataFromJson(json);
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
