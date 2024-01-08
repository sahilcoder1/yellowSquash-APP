// To parse this JSON data, do
//
//     final programDurationDiscountResponse = programDurationDiscountResponseFromJson(jsonString);

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_duration_discount_response.freezed.dart';
part 'program_duration_discount_response.g.dart';

ProgramDurationDiscountResponse programDurationDiscountResponseFromJson(
  String str,
) =>
    ProgramDurationDiscountResponse.fromJson(json.decode(str));

String programDurationDiscountResponseToJson(
  ProgramDurationDiscountResponse data,
) =>
    json.encode(data.toJson());

@freezed
class ProgramDurationDiscountResponse with _$ProgramDurationDiscountResponse {
  const factory ProgramDurationDiscountResponse({
    bool? status,
    DiscountedPrice? discountedPrice,
    String? message,
  }) = _ProgramDurationDiscountResponse;

  factory ProgramDurationDiscountResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramDurationDiscountResponseFromJson(json);
}

@freezed
class DiscountedPrice with _$DiscountedPrice {
  const factory DiscountedPrice({
    String? planDuration,
    String? discount,
    int? price,
    int? discountedPrice,
  }) = _DiscountedPrice;

  factory DiscountedPrice.fromJson(Map<String, dynamic> json) =>
      _$DiscountedPriceFromJson(json);
}
