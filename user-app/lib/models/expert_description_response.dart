// To parse this JSON data, do
//
//     final expertDescriptionResponse = expertDescriptionResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expert_description_response.freezed.dart';
part 'expert_description_response.g.dart';

ExpertDescriptionResponse expertDescriptionResponseFromJson(String str) =>
    ExpertDescriptionResponse.fromJson(json.decode(str));

String expertDescriptionResponseToJson(ExpertDescriptionResponse data) =>
    json.encode(data.toJson());

@freezed
class ExpertDescriptionResponse with _$ExpertDescriptionResponse {
  const factory ExpertDescriptionResponse({
    bool? status,
    String? message,
    ExpertDescriptionData? data,
  }) = _ExpertDescriptionResponse;

  factory ExpertDescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpertDescriptionResponseFromJson(json);
}

@freezed
class ExpertDescriptionData with _$ExpertDescriptionData {
  const factory ExpertDescriptionData({
    String? id,
    String? expertProfile,
    String? expertCategory,
    String? expertName,
    String? expertDesignation,
    String? expertDescription,
    bool? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _ExpertDescriptionData;

  factory ExpertDescriptionData.fromJson(Map<String, dynamic> json) =>
      _$ExpertDescriptionDataFromJson(json);
}
