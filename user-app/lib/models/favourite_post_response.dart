// To parse this JSON data, do
//
//     final favouritePostResponse = favouritePostResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_post_response.freezed.dart';
part 'favourite_post_response.g.dart';

FavouritePostResponse favouritePostResponseFromJson(String str) =>
    FavouritePostResponse.fromJson(json.decode(str));

String favouritePostResponseToJson(FavouritePostResponse data) =>
    json.encode(data.toJson());

@freezed
class FavouritePostResponse with _$FavouritePostResponse {
  const factory FavouritePostResponse({
    bool? status,
    String? message,
  }) = _FavouritePostResponse;

  factory FavouritePostResponse.fromJson(Map<String, dynamic> json) =>
      _$FavouritePostResponseFromJson(json);
}
