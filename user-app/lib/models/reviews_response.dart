// To parse this JSON data, do
//
//     final reviewsResponse = reviewsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reviews_response.freezed.dart';
part 'reviews_response.g.dart';

ReviewsResponse reviewsResponseFromJson(String str) =>
    ReviewsResponse.fromJson(json.decode(str));

String reviewsResponseToJson(ReviewsResponse data) =>
    json.encode(data.toJson());

@freezed
class ReviewsResponse with _$ReviewsResponse {
  const factory ReviewsResponse({
    String? message,
    bool? status,
    ProrgramReviewData? data,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}

@freezed
class ProrgramReviewData with _$ProrgramReviewData {
  const factory ProrgramReviewData({
    List<ProgramReview>? programReview,
  }) = _ProrgramReviewData;

  factory ProrgramReviewData.fromJson(Map<String, dynamic> json) =>
      _$ProrgramReviewDataFromJson(json);
}

@freezed
class ProgramReview with _$ProgramReview {
  const factory ProgramReview({
    String? comment,
    String? commentPhoto,
    String? id,
  }) = _ProgramReview;

  factory ProgramReview.fromJson(Map<String, dynamic> json) =>
      _$ProgramReviewFromJson(json);
}
