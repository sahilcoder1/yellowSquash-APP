// To parse this JSON data, do
//
//     final expertResponse = expertResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expert_response.freezed.dart';
part 'expert_response.g.dart';

ExpertResponse expertResponseFromJson(String str) =>
    ExpertResponse.fromJson(json.decode(str));

String expertResponseToJson(ExpertResponse data) => json.encode(data.toJson());

@freezed
class ExpertResponse with _$ExpertResponse {
  const factory ExpertResponse({
    bool? status,
    String? message,
    List<ExpertData>? data,
    List<String>? category,
  }) = _ExpertResponse;

  factory ExpertResponse.fromJson(Map<String, dynamic> json) =>
      _$ExpertResponseFromJson(json);
}

@freezed
class ExpertData with _$ExpertData {
  const factory ExpertData({
    @JsonKey(name: '_id') String? id,
    String? expertProfile,
    String? expertCategory,
    String? expertName,
    String? expertDesignation,
    String? expertDescription,
    bool? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _ExpertData;

  factory ExpertData.fromJson(Map<String, dynamic> json) =>
      _$ExpertDataFromJson(json);
}
