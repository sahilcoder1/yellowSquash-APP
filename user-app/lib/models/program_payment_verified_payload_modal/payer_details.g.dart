// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayerDetailsImpl _$$PayerDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PayerDetailsImpl(
      fullName: json['fullName'] as String?,
      emailId: json['emailId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayerDetailsImplToJson(_$PayerDetailsImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'emailId': instance.emailId,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
