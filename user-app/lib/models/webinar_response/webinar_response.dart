import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/webinar_response/webinar_data.dart';

part 'webinar_response.freezed.dart';
part 'webinar_response.g.dart';

@freezed
class WebinarResponse with _$WebinarResponse {
  factory WebinarResponse({
    bool? status,
    String? message,
    List<WebinarData>? data,
    List<String>? category,
  }) = _WebinarResponse;

  factory WebinarResponse.fromJson(Map<String, dynamic> json) =>
      _$WebinarResponseFromJson(json);
}
