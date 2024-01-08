// To parse this JSON data, do
//
//     final webinarsDescription = webinarsDescriptionFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'webinars_description.freezed.dart';
part 'webinars_description.g.dart';

WebinarsDescription webinarsDescriptionFromJson(String str) =>
    WebinarsDescription.fromJson(json.decode(str));

String webinarsDescriptionToJson(WebinarsDescription data) =>
    json.encode(data.toJson());

@freezed
class WebinarsDescription with _$WebinarsDescription {
  const factory WebinarsDescription({
    bool? status,
    String? message,
    WebinarDescriptionData? data,
  }) = _WebinarsDescription;

  factory WebinarsDescription.fromJson(Map<String, dynamic> json) =>
      _$WebinarsDescriptionFromJson(json);
}

@freezed
class WebinarDescriptionData with _$WebinarDescriptionData {
  const factory WebinarDescriptionData({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? webinarCategory,
    String? webinarTitle,
    String? expertName,
    String? expertImage,
    String? expertDesignation,
    String? expertCategory,
    String? expertDescription,
    String? webinarVideo,
    DateTime? date,
    String? day,
    String? sessionDurationinHour,
    String? starttime,
    String? endtime,
    String? webinarDescription,
    List<SessionwillCover>? sessionwillCover,
    List<String>? youwillLearn,
    List<String>? whoisitFor,
    int? price,
    String? latestWhatsappLink,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    bool? isDeleted,
    bool? status,
  }) = _Data;

  factory WebinarDescriptionData.fromJson(Map<String, dynamic> json) =>
      _$WebinarDescriptionDataFromJson(json);
}

@freezed
class SessionwillCover with _$SessionwillCover {
  const factory SessionwillCover({
    String? heading,
    String? defination,
  }) = _SessionwillCover;

  factory SessionwillCover.fromJson(Map<String, dynamic> json) =>
      _$SessionwillCoverFromJson(json);
}
