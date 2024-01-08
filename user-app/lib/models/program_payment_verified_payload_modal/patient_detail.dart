// ignore_for_file: unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/program_payment_verified_payload_modal/address.dart';

part 'patient_detail.freezed.dart';
part 'patient_detail.g.dart';

@freezed
class PatientDetailPayment with _$PatientDetailPayment {
  factory PatientDetailPayment({
    String? fullName,
    String? emailId,
    String? phoneNumber,
    int? age,
    String? gender,
    String? image,
    bool? isParent,
  }) = _PatientDetailPayment;

  factory PatientDetailPayment.fromJson(Map<String, dynamic> json) =>
      _$PatientDetailPaymentFromJson(json);
}
