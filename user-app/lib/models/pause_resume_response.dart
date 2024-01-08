// To parse this JSON data, do
//
//     final pauseResumeResponse = pauseResumeResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pause_resume_response.freezed.dart';
part 'pause_resume_response.g.dart';

PauseResumeResponse pauseResumeResponseFromJson(String str) =>
    PauseResumeResponse.fromJson(json.decode(str));

String pauseResumeResponseToJson(PauseResumeResponse data) =>
    json.encode(data.toJson());

@freezed
class PauseResumeResponse with _$PauseResumeResponse {
  const factory PauseResumeResponse({
    bool? status,
    Data? data,
  }) = _PauseResumeResponse;

  factory PauseResumeResponse.fromJson(Map<String, dynamic> json) =>
      _$PauseResumeResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    User? user,
    String? id,
    int? v,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? programId,
    String? batchId,
    String? userId,
    String? profileId,
    String? planType,
    String? planSubType,
    String? status,
    dynamic continutyStartDate,
    dynamic continutyEndDate,
    int? continutyCounter,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
