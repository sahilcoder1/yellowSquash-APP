//

import 'dart:convert';

// To parse this JSON data, do
//
//     final healthPediaResponse = healthPediaResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_pedia_response.freezed.dart';
part 'health_pedia_response.g.dart';

HealthPediaResponse healthPediaResponseFromJson(String str) =>
    HealthPediaResponse.fromJson(json.decode(str));

String healthPediaResponseToJson(HealthPediaResponse data) =>
    json.encode(data.toJson());

@freezed
class HealthPediaResponse with _$HealthPediaResponse {
  const factory HealthPediaResponse({
    bool? status,
    String? message,
    List<HealthPediaData>? data,
    List<String>? category,
  }) = _HealthPediaResponse;

  factory HealthPediaResponse.fromJson(Map<String, dynamic> json) =>
      _$HealthPediaResponseFromJson(json);
}

@freezed
class HealthPediaData with _$HealthPediaData {
  const factory HealthPediaData({
    @JsonKey(name: '_id') String? id,
    String? title,
    DateTime? releaseDate,
    String? category,
    String? summary,
    String? bannerImageUrl,
    String? articleBody,
    String? expertName,
    String? expertImageUrl,
    String? slug,
    bool? isDraft,
    bool? status,
    List<String>? like,
    int? views,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _HealthPediaData;

  factory HealthPediaData.fromJson(Map<String, dynamic> json) =>
      _$HealthPediaDataFromJson(json);
}
