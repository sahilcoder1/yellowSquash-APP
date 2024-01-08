// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

UserResponse userResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String userResponseToJson(UserResponse data) => json.encode(data.toJson());

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    bool? status,
    String? message,
    UserData? data,
    String? token,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    String? fullName,
    String? email,
    String? phone,
    String? password,
    bool? isParent,
    String? profileid,
    String? profilePicture,
    int? patientLength,
    int? index,
    // List<dynamic>? condition,
    // List<dynamic>? interests,
    String? role,
    dynamic patientDetails,
    dynamic observer,
    dynamic address,
    Favorite? favorite,
    @JsonKey(name: '_id') String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
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
