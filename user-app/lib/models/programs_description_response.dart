// To parse this JSON data, do
//
//     final programsDescriptionResponse = programsDescriptionResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'programs_description_response.freezed.dart';
part 'programs_description_response.g.dart';

ProgramsDescriptionResponse programsDescriptionResponseFromJson(String str) =>
    ProgramsDescriptionResponse.fromJson(json.decode(str));

String programsDescriptionResponseToJson(ProgramsDescriptionResponse data) =>
    json.encode(data.toJson());

@freezed
class ProgramsDescriptionResponse with _$ProgramsDescriptionResponse {
  const factory ProgramsDescriptionResponse({
    String? message,
    bool? status,
    ProgramDescriptionData? data,
    List<dynamic>? continuitySession,
    int? continuityCounter,
  }) = _ProgramsDescriptionResponse;

  factory ProgramsDescriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramsDescriptionResponseFromJson(json);
}

@freezed
class ProgramDescriptionData with _$ProgramDescriptionData {
  const factory ProgramDescriptionData({
    AboutTheExpert? aboutTheExpert,
     @JsonKey(name: '_id') String? id,
    String? title,
    String? slug,
    double? rating,
    String? programintovideourl,
    String? fordeseases,
    int? videoId,
    String? imageUrl,
    int? imageId,
    String? expert,
    String? expertDesignation,
    String? expertImage,
    String? author,
    Plans? plans,
    String? programCategory,
    int? enrolledUser,
    String? status,
    String? overview,
    String? howItWorks,
    List<Structure>? structure,
    @JsonKey(name: 'FAQ') List<Faq>? faq,
    bool? isDeleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
    String? intakeFormLink,
    String? whatsappLink,
    DateTime? startDate,
    bool? isSubscribed,
    bool? isSesssionPaused,
  }) = _ProgramDescriptionData;

  factory ProgramDescriptionData.fromJson(Map<String, dynamic> json) =>
      _$ProgramDescriptionDataFromJson(json);
}

@freezed
class AboutTheExpert with _$AboutTheExpert {
  const factory AboutTheExpert({
    String? expertDescription,
  }) = _AboutTheExpert;

  factory AboutTheExpert.fromJson(Map<String, dynamic> json) =>
      _$AboutTheExpertFromJson(json);
}

@freezed
class Faq with _$Faq {
  const factory Faq({
    String? ques,
    List<String>? ans,
  }) = _Faq;

  factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);
}

@freezed
class Plans with _$Plans {
  const factory Plans({
    List<Plansdetail>? plansdetails,
  }) = _Plans;

  factory Plans.fromJson(Map<String, dynamic> json) => _$PlansFromJson(json);
}

@freezed
class Plansdetail with _$Plansdetail {
  const factory Plansdetail({
    String? type,
    List<Plan>? plans,
  }) = _Plansdetail;

  factory Plansdetail.fromJson(Map<String, dynamic> json) =>
      _$PlansdetailFromJson(json);
}

@freezed
class Plan with _$Plan {
  const factory Plan({
    String? planDuration,
    String? discount,
    int? price,
    int? discountedPrice,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}

@freezed
class Structure with _$Structure {
  const factory Structure({
    String? sessionTitle,
    String? sessionDuration,
    DateTime? startDate,
    DateTime? endDate,
    String? startTime,
    String? sessionRecording,
    List<dynamic>? sessionResources,
    String? description,
    String? sessionlink,
    String? id,
  }) = _Structure;

  factory Structure.fromJson(Map<String, dynamic> json) =>
      _$StructureFromJson(json);
}
