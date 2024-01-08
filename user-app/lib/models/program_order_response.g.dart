// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramOrderResponseImpl _$$ProgramOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramOrderResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : ProgramOrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProgramOrderResponseImplToJson(
        _$ProgramOrderResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$ProgramOrderDataImpl _$$ProgramOrderDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgramOrderDataImpl(
      dataId: json['dataId'] as String?,
      userId: json['userId'] as String?,
      programId: json['programId'] as String?,
      couponCode: json['couponCode'] as String?,
      planDuration: json['planDuration'] as String?,
      entity: json['entity'] as String?,
      amount: json['amount'] as int?,
      amountPaid: json['amountPaid'] as int?,
      amountDue: json['amountDue'] as int?,
      currency: json['currency'] as String?,
      receipt: json['receipt'] as String?,
      offerId: json['offerId'] as String?,
      status: json['status'] as String?,
      attempts: json['attempts'] as int?,
      notes: json['notes'] as List<dynamic>?,
      createdAt: json['createdAt'] as int?,
      id: json['id'] as String?,
      v: json['v'] as int?,
    );

Map<String, dynamic> _$$ProgramOrderDataImplToJson(
        _$ProgramOrderDataImpl instance) =>
    <String, dynamic>{
      'dataId': instance.dataId,
      'userId': instance.userId,
      'programId': instance.programId,
      'couponCode': instance.couponCode,
      'planDuration': instance.planDuration,
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
