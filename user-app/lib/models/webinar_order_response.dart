// To parse this JSON data, do
//
//     final webinarOrderResponse = webinarOrderResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'webinar_order_response.freezed.dart';
part 'webinar_order_response.g.dart';

WebinarOrderResponse webinarOrderResponseFromJson(String str) =>
    WebinarOrderResponse.fromJson(json.decode(str));

String webinarOrderResponseToJson(WebinarOrderResponse data) =>
    json.encode(data.toJson());

@freezed
class WebinarOrderResponse with _$WebinarOrderResponse {
  const factory WebinarOrderResponse({
    String? message,
    bool? status,
    WebinarOrderData? data,
  }) = _WebinarOrderResponse;

  factory WebinarOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$WebinarOrderResponseFromJson(json);
}

@freezed
class WebinarOrderData with _$WebinarOrderData {
  const factory WebinarOrderData({
    String? dataId,
    String? userId,
    String? webinarId,
    String? couponCode,
    String? entity,
    int? amount,
    int? amountPaid,
    int? amountDue,
    String? currency,
    String? receipt,
    dynamic offerId,
    String? status,
    int? attempts,
    List<dynamic>? notes,
    int? createdAt,
    String? id,
    int? v,
  }) = _WebinarOrderData;

  factory WebinarOrderData.fromJson(Map<String, dynamic> json) =>
      _$WebinarOrderDataFromJson(json);
}
