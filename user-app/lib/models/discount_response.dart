// To parse this JSON data, do
//
//     final discountResponse = discountResponseFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_response.freezed.dart';
part 'discount_response.g.dart';

DiscountResponse discountResponseFromJson(String str) =>
    DiscountResponse.fromJson(json.decode(str));

String discountResponseToJson(DiscountResponse data) =>
    json.encode(data.toJson());

@freezed
class DiscountResponse with _$DiscountResponse {
  const factory DiscountResponse({
    String? message,
    bool? status,
    int? dicountedPrice,
  }) = _DiscountResponse;

  factory DiscountResponse.fromJson(Map<String, dynamic> json) =>
      _$DiscountResponseFromJson(json);
}
