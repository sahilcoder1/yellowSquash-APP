// To parse this JSON data, do
//
//     final commentPostResponse = commentPostResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_post_response.freezed.dart';
part 'comment_post_response.g.dart';

CommentPostResponse commentPostResponseFromJson(String str) =>
    CommentPostResponse.fromJson(json.decode(str));

String commentPostResponseToJson(CommentPostResponse data) =>
    json.encode(data.toJson());

@freezed
class CommentPostResponse with _$CommentPostResponse {
  const factory CommentPostResponse({
    bool? status,
    String? message,
  }) = _CommentPostResponse;

  factory CommentPostResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentPostResponseFromJson(json);
}
