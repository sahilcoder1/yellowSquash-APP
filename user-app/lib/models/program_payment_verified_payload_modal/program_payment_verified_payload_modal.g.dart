// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_payment_verified_payload_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramPaymentVerifiedPayloadModalImpl
    _$$ProgramPaymentVerifiedPayloadModalImplFromJson(
            Map<String, dynamic> json) =>
        _$ProgramPaymentVerifiedPayloadModalImpl(
          razorpayOrderId: json['razorpay_order_id'] as String?,
          razorpayPaymentId: json['razorpay_payment_id'] as String?,
          razorpaySignature: json['razorpay_signature'] as String?,
          planType: json['planType'] as String?,
          planSubType: json['planSubType'] as String?,
          payerDetails: json['payerDetails'] == null
              ? null
              : PayerDetails.fromJson(
                  json['payerDetails'] as Map<String, dynamic>),
          patientDetails: (json['patientDetails'] as List<dynamic>?)
              ?.map((e) =>
                  PatientDetailPayment.fromJson(e as Map<String, dynamic>))
              .toList(),
          observer: json['observer'] == null
              ? null
              : Observer.fromJson(json['observer'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProgramPaymentVerifiedPayloadModalImplToJson(
        _$ProgramPaymentVerifiedPayloadModalImpl instance) =>
    <String, dynamic>{
      'razorpay_order_id': instance.razorpayOrderId,
      'razorpay_payment_id': instance.razorpayPaymentId,
      'razorpay_signature': instance.razorpaySignature,
      'planType': instance.planType,
      'planSubType': instance.planSubType,
      'payerDetails': instance.payerDetails,
      'patientDetails': instance.patientDetails,
      'observer': instance.observer,
    };
