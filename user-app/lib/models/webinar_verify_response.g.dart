// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarVerifyResponseImpl _$$WebinarVerifyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarVerifyResponseImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : VebinarVerifyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarVerifyResponseImplToJson(
        _$WebinarVerifyResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      fullName: json['fullName'] as String?,
      emailId: json['emailId'] as String?,
      phone: json['phone'] as String?,
      userId: json['userId'] as String?,
      webinarId: json['webinarId'] as String?,
      programName: json['programName'] as String?,
      razorpayPaymentId: json['razorpayPaymentId'] as String?,
      razorpayOrderId: json['razorpayOrderId'] as String?,
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      method: json['method'] as String?,
      entity: json['entity'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'emailId': instance.emailId,
      'phone': instance.phone,
      'userId': instance.userId,
      'webinarId': instance.webinarId,
      'programName': instance.programName,
      'razorpayPaymentId': instance.razorpayPaymentId,
      'razorpayOrderId': instance.razorpayOrderId,
      'amount': instance.amount,
      'currency': instance.currency,
      'method': instance.method,
      'entity': instance.entity,
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'v': instance.v,
    };
