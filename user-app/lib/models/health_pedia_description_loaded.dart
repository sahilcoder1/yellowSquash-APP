// To parse this JSON data, do
//
//     final healthPediaDescriptionLoaded = healthPediaDescriptionLoadedFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_pedia_description_loaded.freezed.dart';
part 'health_pedia_description_loaded.g.dart';

HealthPediaDescriptionLoaded healthPediaDescriptionLoadedFromJson(String str) =>
    HealthPediaDescriptionLoaded.fromJson(json.decode(str));

String healthPediaDescriptionLoadedToJson(HealthPediaDescriptionLoaded data) =>
    json.encode(data.toJson());

@freezed
class HealthPediaDescriptionLoaded with _$HealthPediaDescriptionLoaded {
  const factory HealthPediaDescriptionLoaded({
  String? message,
    bool? status,
    List<HealthDescriptionPediaData>? data,
  }) = _HealthPediaDescriptionLoaded;

  factory HealthPediaDescriptionLoaded.fromJson(Map<String, dynamic> json) =>
      _$HealthPediaDescriptionLoadedFromJson(json);
}

@freezed
class HealthDescriptionPediaData with _$HealthDescriptionPediaData {
  const factory HealthDescriptionPediaData({
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
    bool? status,
    List<String>? like,
    int? views,
    String? metatag,
    String? metadiscription,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    bool? isDeleted,
    bool? isDraft,
  }) = _HealthDescriptionPediaData;

  factory HealthDescriptionPediaData.fromJson(Map<String, dynamic> json) =>
      _$HealthDescriptionPediaDataFromJson(json);
}
