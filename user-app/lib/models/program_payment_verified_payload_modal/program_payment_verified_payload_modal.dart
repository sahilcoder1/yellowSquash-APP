import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/program_payment_verified_payload_modal/observer.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/patient_detail.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/payer_details.dart';

part 'program_payment_verified_payload_modal.freezed.dart';
part 'program_payment_verified_payload_modal.g.dart';

@freezed
class ProgramPaymentVerifiedPayloadModal
    with _$ProgramPaymentVerifiedPayloadModal {
  factory ProgramPaymentVerifiedPayloadModal({
    @JsonKey(name: 'razorpay_order_id') String? razorpayOrderId,
    @JsonKey(name: 'razorpay_payment_id') String? razorpayPaymentId,
    @JsonKey(name: 'razorpay_signature') String? razorpaySignature,
    String? planType,
    String? planSubType,
    PayerDetails? payerDetails,
    List<PatientDetailPayment>? patientDetails,
    Observer? observer,
  }) = _ProgramPaymentVerifiedPayloadModal;

  factory ProgramPaymentVerifiedPayloadModal.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProgramPaymentVerifiedPayloadModalFromJson(json);
}
