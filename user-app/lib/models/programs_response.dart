

// ignore_for_file: sort_constructors_first

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/utils/services/data_manager.dart';

part 'programs_response.freezed.dart';
part 'programs_response.g.dart';

ProgramsResponse programsResponseFromJson(String str) =>
    ProgramsResponse.fromJson(json.decode(str));

String programsResponseToJson(ProgramsResponse data) =>
    json.encode(data.toJson());

@freezed
class ProgramsResponse with _$ProgramsResponse {
  const factory ProgramsResponse({
    bool? status,
    String? message,
    List<ProgramData>? data,
    List<String>? category,
  }) = _ProgramsResponse;

  factory ProgramsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgramsResponseFromJson(json);
}

@freezed
class ProgramData with _$ProgramData {
  const factory ProgramData({
    // Overview? overview,
    // AboutTheExpert? aboutTheExpert,
    @JsonKey(name: '_id') String? id,
    String? title,
    String? slug,
    double? rating,
    String? programintovideourl,
    int? videoId,
    String? imageUrl,
    int? imageId,
    String? expert,
    String? expertDesignation,
    String? expertImage,
    String? author,
    // Plans? plans,
    String? programCategory,
    int? enrolledUser,
    String? status,
    String? howItWorks,
    // List<Structure>? structure,
    // List<Faq>? faq,
    String? whatsappLink,
    String? intakeFormLink,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? v,
  }) = _ProgramData;

  const ProgramData._();

  bool get isFav  {
    if (DataManager.shared.programIdsList.contains(id)) {
      return true;
    }
    return false;
  }

  factory ProgramData.fromJson(Map<String, dynamic> json) =>
      _$ProgramDataFromJson(json);
}

// @freezed
// class AboutTheExpert with _$AboutTheExpert {
//   const factory AboutTheExpert({
//     String? expertDescription,
//   }) = _AboutTheExpert;

//   factory AboutTheExpert.fromJson(Map<String, dynamic> json) =>
//       _$AboutTheExpertFromJson(json);
// }

// @freezed
// class Faq with _$Faq {
//   const factory Faq({
//     String? ques,
//     List<String>? ans,
//   }) = _Faq;

//   factory Faq.fromJson(Map<String, dynamic> json) => _$FaqFromJson(json);
// }

// @freezed
// class Overview with _$Overview {
//   const factory Overview({
//     LetTheDataSpeak? letTheDataSpeak,
//     List<String>? whatWeOffer,
//     List<String>? theOutcome,
//     String? overviewDescription,
//   }) = _Overview;

//   factory Overview.fromJson(Map<String, dynamic> json) =>
//       _$OverviewFromJson(json);
// }

// @freezed
// class LetTheDataSpeak with _$LetTheDataSpeak {
//   const factory LetTheDataSpeak({
//     String? batches,
//     String? participants,
//     String? benefitted,
//   }) = _LetTheDataSpeak;

//   factory LetTheDataSpeak.fromJson(Map<String, dynamic> json) =>
//       _$LetTheDataSpeakFromJson(json);
// }

// @freezed
// class Plans with _$Plans {
//   const factory Plans({
//     List<Plansdetail>? plansdetails,
//   }) = _Plans;

//   factory Plans.fromJson(Map<String, dynamic> json) => _$PlansFromJson(json);
// }

// @freezed
// class Plansdetail with _$Plansdetail {
//   const factory Plansdetail({
//     String? type,
//     String? planDuration,
//     String? discount,
//     int? price,
//     int? discountedPrice,
//     List<Plan>? plans,
//   }) = _Plansdetail;

//   factory Plansdetail.fromJson(Map<String, dynamic> json) =>
//       _$PlansdetailFromJson(json);
// }

// @freezed
// class Plan with _$Plan {
//   const factory Plan({
//     String? planDuration,
//     String? discount,
//     int? price,
//     int? discountedPrice,
//   }) = _Plan;

//   factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
// }

// @freezed
// class Structure with _$Structure {
//   const factory Structure({
//     SessionId? sessionId,
//     SessionTitle? sessionTitle,
//     Duration? duration,
//     Description? description,
//   }) = _Structure;

//   factory Structure.fromJson(Map<String, dynamic> json) =>
//       _$StructureFromJson(json);
// }

// enum Description { TEXT }

// final descriptionValues = EnumValues({'text': Description.TEXT});

// enum Duration { THE_90_MIN }

// final durationValues = EnumValues({'90 min': Duration.THE_90_MIN});

// enum SessionId { SESSION_1, SESSION_2, SESSION_3 }

// final sessionIdValues = EnumValues({
//   'session-1': SessionId.SESSION_1,
//   'session-2': SessionId.SESSION_2,
//   'session-3': SessionId.SESSION_3
// });

// enum SessionTitle {
//   ORIENTATION,
//   ADVANCE_KHUMBHAK_MODULE,
//   KHUMBHAK_MODULE_LECTURE
// }

// final sessionTitleValues = EnumValues({
//   'Advance Khumbhak Module': SessionTitle.ADVANCE_KHUMBHAK_MODULE,
//   'Khumbhak Module lecture': SessionTitle.KHUMBHAK_MODULE_LECTURE,
//   'orientation': SessionTitle.ORIENTATION
// });

// class EnumValues<T> {
//   EnumValues(this.map);
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
