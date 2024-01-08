// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webinar_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebinarOrderResponseImpl _$$WebinarOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarOrderResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : WebinarOrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebinarOrderResponseImplToJson(
        _$WebinarOrderResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$WebinarOrderDataImpl _$$WebinarOrderDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WebinarOrderDataImpl(
      dataId: json['dataId'] as String?,
      userId: json['userId'] as String?,
      webinarId: json['webinarId'] as String?,
      couponCode: json['couponCode'] as String?,
      entity: json['entity'] as String?,
      amount: json['amount'] as int?,
      amountPaid: json['amountPaid'] as int?,
      amountDue: json['amountDue'] as int?,
      currency: json['currency'] as String?,
      receipt: json['receipt'] as String?,
      offerId: json['offerId'],
      status: json['status'] as String?,
      attempts: json['attempts'] as int?,
      notes: json['notes'] as List<dynamic>?,
      createdAt: json['createdAt'] as int?,
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$WebinarOrderDataImplToJson(
        _$WebinarOrderDataImpl instance) =>
    <String, dynamic>{
      'dataId': instance.dataId,
      'userId': instance.userId,
      'webinarId': instance.webinarId,
      'couponCode': instance.couponCode,
      'entity': instance.entity,
      'amount': instance.amount,
      'amountPaid': instance.amountPaid,
      'amountDue': instance.amountDue,
      'currency': instance.currency,
      'receipt': instance.receipt,
      'offerId': instance.offerId,
      'status': instance.status,
      'attempts': instance.attempts,
      'notes': instance.notes,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'v': instance.v,
    };
