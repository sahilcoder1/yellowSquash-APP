// To parse this JSON data, do
//
//     final healthPediavideoResponse = healthPediavideoResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_pediavideo_response.freezed.dart';
part 'health_pediavideo_response.g.dart';

HealthPediavideoResponse healthPediavideoResponseFromJson(String str) =>
    HealthPediavideoResponse.fromJson(json.decode(str));

String healthPediavideoResponseToJson(HealthPediavideoResponse data) =>
    json.encode(data.toJson());

@freezed
class HealthPediavideoResponse with _$HealthPediavideoResponse {
  const factory HealthPediavideoResponse({
    bool? status,
    String? message,
    List<HealthPediaVideoData>? data,
    List<String>? category,
  }) = _HealthPediavideoResponse;

  factory HealthPediavideoResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthPediavideoResponseFromJson(json);
}

@freezed
class HealthPediaVideoData with _$HealthPediaVideoData {
  const factory HealthPediaVideoData({
    String? id,
    String? blogVideo,
    String? blogCategory,
    String? blogTitle,
    String? blogthumbnail,
    String? blogBy,
    bool? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _HealthPediaVideoData;

  factory HealthPediaVideoData.fromJson(Map<String, dynamic> json) =>
      _$HealthPediaVideoDataFromJson(json);
}
