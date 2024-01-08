// To parse this JSON data, do
//
//     final commentGetResponse = commentGetResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_get_response.freezed.dart';
part 'comment_get_response.g.dart';

CommentGetResponse commentGetResponseFromJson(String str) =>
    CommentGetResponse.fromJson(json.decode(str));

String commentGetResponseToJson(CommentGetResponse data) =>
    json.encode(data.toJson());

@freezed
class CommentGetResponse with _$CommentGetResponse {
  const factory CommentGetResponse({
  String? message,
    bool? status,
    List<String>? data,
  }) = _CommentGetResponse;

  factory CommentGetResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentGetResponseFromJson(json);
}
