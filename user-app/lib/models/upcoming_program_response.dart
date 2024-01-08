

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_program_response.freezed.dart';
part 'upcoming_program_response.g.dart';

UpcomingProgramResponse upcomingProgramResponseFromJson(String str) =>
    UpcomingProgramResponse.fromJson(json.decode(str));

String upcomingProgramResponseToJson(UpcomingProgramResponse data) =>
    json.encode(data.toJson());

@freezed
class UpcomingProgramResponse with _$UpcomingProgramResponse {
  const factory UpcomingProgramResponse({
    bool? status,
    String? message,
    List<UpcomingProgramData>? data,
  }) = _UpcomingProgramResponse;

  factory UpcomingProgramResponse.fromJson(Map<String, dynamic> json) =>
      _$UpcomingProgramResponseFromJson(json);
}

@freezed
class UpcomingProgramData with _$UpcomingProgramData {
  const factory UpcomingProgramData({
    String? programId,
    String? title,
    String? imageUrl,
    String? expert,
    String? startDate,
  }) = _UpcomingProgramData;

  factory UpcomingProgramData.fromJson(Map<String, dynamic> json) =>
      _$UpcomingProgramDataFromJson(json);
}
