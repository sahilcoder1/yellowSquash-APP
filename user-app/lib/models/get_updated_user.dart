// To parse this JSON data, do
//
//     final getUpdatedUser = getUpdatedUserFromJson(jsonString);

// ignore_for_file: camel_case_types, lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_updated_user.freezed.dart';
part 'get_updated_user.g.dart';

GetUpdatedUser getUpdatedUserFromJson(String str) =>
    GetUpdatedUser.fromJson(json.decode(str));

String getUpdatedUserToJson(GetUpdatedUser data) => json.encode(data.toJson());

@freezed
class GetUpdatedUser with _$GetUpdatedUser {
  const factory GetUpdatedUser({
    bool? status,
    String? message,
    getUpdatedData? data,
  }) = _GetUpdatedUser;

  factory GetUpdatedUser.fromJson(Map<String, dynamic> json) =>
      _$GetUpdatedUserFromJson(json);
}

@freezed
class getUpdatedData with _$getUpdatedData {
  const factory getUpdatedData({
    Favorite? favorite,
    @JsonKey(name: '_id') String? id,
    String? fullName,
    String? email,
    String? phone,
    String? password,
    int? age,
    String? gender,
    List<String>? condition,
    List<String>? interests,
    String? role,
    Observer? observer,
    Address? address,
    List<PatientDetail>? patientDetails,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? location,
    String? profilePicture,
    String? timezone,
  }) = _Data;

  factory getUpdatedData.fromJson(Map<String, dynamic> json) => _$getUpdatedDataFromJson(json);
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
class Favorite with _$Favorite {
  const factory Favorite({
    List<dynamic>? programId,
    List<dynamic>? webinarId,
    List<dynamic>? expertId,
    List<dynamic>? healthPediaId,
    List<dynamic>? videohealthPediaId,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);
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

@freezed
class PatientDetail with _$PatientDetail {
  const factory PatientDetail({
    Favorite? childFavorite,
    String? fullName,
    String? emailId,
    String? phoneNumber,
    int? age,
    dynamic gender,
    dynamic address,
    String? profileId,
    String? image,
    List<dynamic>? condition,
    List<dynamic>? interests,
    String? id,
  }) = _PatientDetail;

  factory PatientDetail.fromJson(Map<String, dynamic> json) =>
      _$PatientDetailFromJson(json);
}
