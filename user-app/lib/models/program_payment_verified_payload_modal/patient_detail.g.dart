// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientDetailPaymentImpl _$$PatientDetailPaymentImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientDetailPaymentImpl(
      fullName: json['fullName'] as String?,
      emailId: json['emailId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      isParent: json['isParent'] as bool?,
    );

Map<String, dynamic> _$$PatientDetailPaymentImplToJson(
        _$PatientDetailPaymentImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'emailId': instance.emailId,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'gender': instance.gender,
      'image': instance.image,
      'isParent': instance.isParent,
    };
