// To parse this JSON data, do
//
//     final webinarVerifyResponse = webinarVerifyResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'webinar_verify_response.freezed.dart';
part 'webinar_verify_response.g.dart';

WebinarVerifyResponse webinarVerifyResponseFromJson(String str) =>
    WebinarVerifyResponse.fromJson(json.decode(str));

String webinarVerifyResponseToJson(WebinarVerifyResponse data) =>
    json.encode(data.toJson());

@freezed
class WebinarVerifyResponse with _$WebinarVerifyResponse {
  const factory WebinarVerifyResponse({
    bool? status,
    String? message,
    VebinarVerifyData? data,
  }) = _WebinarVerifyResponse;

  factory WebinarVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$WebinarVerifyResponseFromJson(json);
}

@freezed
class VebinarVerifyData with _$VebinarVerifyData {
  const factory VebinarVerifyData({
    String? fullName,
    String? emailId,
    String? phone,
    String? userId,
    String? webinarId,
    String? programName,
    String? razorpayPaymentId,
    String? razorpayOrderId,
    int? amount,
    String? currency,
    String? method,
    String? entity,
    DateTime? createdAt,
    String? id,
    int? v,
  }) = _Data;

  factory VebinarVerifyData.fromJson(Map<String, dynamic> json) =>
      _$VebinarVerifyDataFromJson(json);
}
