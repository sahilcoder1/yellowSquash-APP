// To parse this JSON data, do
//
//     final myWebinarResponse = myWebinarResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_webinar_response.freezed.dart';
part 'my_webinar_response.g.dart';

MyWebinarResponse myWebinarResponseFromJson(String str) =>
    MyWebinarResponse.fromJson(json.decode(str));

String myWebinarResponseToJson(MyWebinarResponse data) =>
    json.encode(data.toJson());

@freezed
class MyWebinarResponse with _$MyWebinarResponse {
  const factory MyWebinarResponse({
    String? message,
    bool? status,
    List<MyWebinarData>? data,
  }) = _MyWebinarResponse;

  factory MyWebinarResponse.fromJson(Map<String, dynamic> json) =>
      _$MyWebinarResponseFromJson(json);
}

@freezed
class MyWebinarData with _$MyWebinarData {
  const factory MyWebinarData({
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
    String? starttime,
    String? endtime,
    String? webinarDescription,
    // String? sessionwillCover,
    List<String>? youwillLearn,
    List<String>? whoisitFor,
    String? experienceImage,
    String? experienceName,
    String? experienceDescription,
    String? experienceVideo,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    int? price,
  }) = _Datum;

  factory MyWebinarData.fromJson(Map<String, dynamic> json) =>
      _$MyWebinarDataFromJson(json);
}
