// To parse this JSON data, do
//
//     final favouriteGetResponse = favouriteGetResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_get_response.freezed.dart';
part 'favourite_get_response.g.dart';

FavouriteGetResponse favouriteGetResponseFromJson(String str) =>
    FavouriteGetResponse.fromJson(json.decode(str));

String favouriteGetResponseToJson(FavouriteGetResponse data) =>
    json.encode(data.toJson());

@freezed
class FavouriteGetResponse with _$FavouriteGetResponse {
  const factory FavouriteGetResponse({
    String? message,
    bool? status,
    FavData? data,
  }) = _FavouriteGetResponse;

  factory FavouriteGetResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouriteGetResponseFromJson(json);
}

@freezed
class FavData with _$FavData {
  const factory FavData({
    List<ProgramId>? programId,
    List<WebinarId>? webinarId,
    List<ExpertId>? expertId,
    List<HealthPediaId>? healthPediaId,
    List<VideohealthPediaId>? videohealthPediaId,
  }) = _Data;

  factory FavData.fromJson(Map<String, dynamic> json) => _$FavDataFromJson(json);
}

@freezed
class ExpertId with _$ExpertId {
  const factory ExpertId({
    @JsonKey(name: '_id') String? id,
    String? expertProfile,
    String? expertCategory,
    String? expertName,
    String? expertDesignation,
    String? qualification,
    String? language,
  }) = _ExpertId;

  factory ExpertId.fromJson(Map<String, dynamic> json) =>
      _$ExpertIdFromJson(json);
}

@freezed
class HealthPediaId with _$HealthPediaId {
  const factory HealthPediaId({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? category,
    String? bannerImageUrl,
    String? expertName,
    String? expertImageUrl,
  }) = _HealthPediaId;

  factory HealthPediaId.fromJson(Map<String, dynamic> json) =>
      _$HealthPediaIdFromJson(json);
}

@freezed
class ProgramId with _$ProgramId {
  const factory ProgramId({
    @JsonKey(name: '_id') String? id,
    String? title,
    String? imageUrl,
    String? expert,
    String? expertDesignation,
    String? expertImage,
    String? programCategory,
    String? fordeseases,
  }) = _ProgramId;

  factory ProgramId.fromJson(Map<String, dynamic> json) =>
      _$ProgramIdFromJson(json);
}

@freezed
class VideohealthPediaId with _$VideohealthPediaId {
  const factory VideohealthPediaId({
    @JsonKey(name: '_id') String? id,
    String? blogVideo,
    String? blogthumbnail,
    String? blogCategory,
    String? blogTitle,
    String? blogBy,
  }) = _VideohealthPediaId;

  factory VideohealthPediaId.fromJson(Map<String, dynamic> json) =>
      _$VideohealthPediaIdFromJson(json);
}

@freezed
class WebinarId with _$WebinarId {
  const factory WebinarId({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? webinarCategory,
    String? webinarTitle,
    String? expertName,
    String? expertImage,
    String? expertDesignation,
    String? webinarVideo,
    DateTime? date,
    String? day,
    String? starttime,
  }) = _WebinarId;

  factory WebinarId.fromJson(Map<String, dynamic> json) =>
      _$WebinarIdFromJson(json);
}
