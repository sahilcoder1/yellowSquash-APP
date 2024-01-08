import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_program_description.freezed.dart';
part 'upcoming_program_description.g.dart';

UpcomingProgramDescription upcomingProgramDescriptionFromJson(String str) =>
    UpcomingProgramDescription.fromJson(json.decode(str));

String upcomingProgramDescriptionToJson(UpcomingProgramDescription data) =>
    json.encode(data.toJson());

@freezed
class UpcomingProgramDescription with _$UpcomingProgramDescription {
  const factory UpcomingProgramDescription({
    bool? status,
    String? message,
    List<UpcomingProgramData>? data,
    List<String>? category,
  }) = _UpcomingProgramDescription;

  factory UpcomingProgramDescription.fromJson(Map<String, dynamic> json) =>
      _$UpcomingProgramDescriptionFromJson(json);
}

@freezed
class UpcomingProgramData with _$UpcomingProgramData {
  const factory UpcomingProgramData({
    Overview? overview,
    AboutTheExpert? aboutTheExpert,
    String? id,
    String? title,
    String? slug,
    int? rating,
    String? programintovideourl,
    int? videoId,
    String? imageUrl,
    int? imageId,
    String? expert,
    String? expertDesignation,
    String? expertImage,
    String? author,
    String? programdescription,
    int? numberofSessions,
    Plans? plans,
    DateTime? startDate,
    String? programCategory,
    int? enrolledUser,
    String? status,
    String? teamImage,
    String? howItWorks,
    String? structure,
    String? faq,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _Datum;

  factory UpcomingProgramData.fromJson(Map<String, dynamic> json) =>
      _$UpcomingProgramDataFromJson(json);
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
class Overview with _$Overview {
  const factory Overview({
    LetTheDataSpeak? letTheDataSpeak,
    String? whatWeOffer,
    String? theOutcome,
    String? overviewDescription,
  }) = _Overview;

  factory Overview.fromJson(Map<String, dynamic> json) =>
      _$OverviewFromJson(json);
}

@freezed
class LetTheDataSpeak with _$LetTheDataSpeak {
  const factory LetTheDataSpeak({
    int? batches,
    int? participants,
    int? benefitted,
  }) = _LetTheDataSpeak;

  factory LetTheDataSpeak.fromJson(Map<String, dynamic> json) =>
      _$LetTheDataSpeakFromJson(json);
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
    String? planDuration,
    String? discount,
    int? price,
    int? discountedPrice,
  }) = _Plansdetail;

  factory Plansdetail.fromJson(Map<String, dynamic> json) =>
      _$PlansdetailFromJson(json);
}
