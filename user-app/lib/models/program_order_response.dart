// To parse this JSON data, do
//
//     final programOrderResponse = programOrderResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_order_response.freezed.dart';
part 'program_order_response.g.dart';

ProgramOrderResponse programOrderResponseFromJson(String str) =>
    ProgramOrderResponse.fromJson(json.decode(str));

String programOrderResponseToJson(ProgramOrderResponse data) =>
    json.encode(data.toJson());

@freezed
class ProgramOrderResponse with _$ProgramOrderResponse {
  const factory ProgramOrderResponse({
    String? message,
    bool? status,
    ProgramOrderData? data,
  }) = _ProgramOrderResponse;

  factory ProgramOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramOrderResponseFromJson(json);
}

@freezed
class ProgramOrderData with _$ProgramOrderData {
  const factory ProgramOrderData({
    String? dataId,
    String? userId,
    String? programId,
    String? couponCode,
    String? planDuration,
    String? entity,
    int? amount,
    int? amountPaid,
    int? amountDue,
    String? currency,
    String? receipt,
    String? offerId,
    String? status,
    int? attempts,
    List<dynamic>? notes,
    int? createdAt,
    String? id,
    int? v,
  }) = _ProgramOrderData;

  factory ProgramOrderData.fromJson(Map<String, dynamic> json) =>
      _$ProgramOrderDataFromJson(json);
}
