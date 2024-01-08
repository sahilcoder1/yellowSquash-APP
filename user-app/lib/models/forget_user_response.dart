// To parse this JSON data, do
//
//     final forgetUserResponse = forgetUserResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_user_response.freezed.dart';
part 'forget_user_response.g.dart';

ForgetUserResponse forgetUserResponseFromJson(String str) =>
    ForgetUserResponse.fromJson(json.decode(str));

String forgetUserResponseToJson(ForgetUserResponse data) =>
    json.encode(data.toJson());

@freezed
class ForgetUserResponse with _$ForgetUserResponse {
  const factory ForgetUserResponse({
    String? message,
    String? userId,
  }) = _ForgetUserResponse;

  factory ForgetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetUserResponseFromJson(json);
}
