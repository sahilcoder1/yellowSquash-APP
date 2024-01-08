// To parse this JSON data, do
//
//     final userProfileUpdateSecond = userProfileUpdateSecondFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_update_second.freezed.dart';
part 'user_profile_update_second.g.dart';

UserProfileUpdateSecond userProfileUpdateSecondFromJson(String str) =>
    UserProfileUpdateSecond.fromJson(json.decode(str));

String userProfileUpdateSecondToJson(UserProfileUpdateSecond data) =>
    json.encode(data.toJson());

@freezed
class UserProfileUpdateSecond with _$UserProfileUpdateSecond {
  const factory UserProfileUpdateSecond({
    bool? status,
    String? message,
    UserProfileUpdateSecondData? data,
  }) = _UserProfileUpdateSecond;

  factory UserProfileUpdateSecond.fromJson(Map<String, dynamic> json) =>
      _$UserProfileUpdateSecondFromJson(json);
}

@freezed
class UserProfileUpdateSecondData with _$UserProfileUpdateSecondData {
  const factory UserProfileUpdateSecondData({
    Favorite? favorite,
    @JsonKey(name: '_id') String? id,
    String? fullName,
    String? email,
    String? phone,
    List<String>? condition,
    List<String>? interests,
    String? role,
    Observer? observer,
    Address? address,
    int? age,
    String? gender,
    String? location,
    String? timezone,
  }) = _UserProfileUpdateSecondData;

  factory UserProfileUpdateSecondData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileUpdateSecondDataFromJson(json);
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
    List<String>? programId,
    List<dynamic>? webinarId,
    List<dynamic>? expertId,
    List<dynamic>? healthPediaId,
    List<String>? videohealthPediaId,
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
