import 'package:freezed_annotation/freezed_annotation.dart';

part 'webinar_data.freezed.dart';
part 'webinar_data.g.dart';

@freezed
class WebinarData with _$WebinarData {
  factory WebinarData({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? webinarCategory,
    String? webinarTitle,
    String? expertName,
    String? expertImage,
    String? expertDesignation,
    String? expertCategory,
    String? expertDescription,
    String? webinarVideo,
    DateTime? date,
    String? day,
    @JsonKey(name: 'Starttime') String? starttime,
    @JsonKey(name: 'Endtime') String? endtime,
    String? webinarDescription,
    // String? sessionwillCover,
    List<String>? youwillLearn,
    List<String>? whoisitFor,
    String? experienceImage,
    String? experienceName,
    String? experienceDescription,
    String? experienceVideo,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? price,
    String? latestWhatsappLink,
  }) = _WebinarData;

  factory WebinarData.fromJson(Map<String, dynamic> json) =>
      _$WebinarDataFromJson(json);
}
