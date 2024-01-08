// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountResponseImpl _$$DiscountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountResponseImpl(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      dicountedPrice: json['dicountedPrice'] as int?,
    );

Map<String, dynamic> _$$DiscountResponseImplToJson(
        _$DiscountResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'dicountedPrice': instance.dicountedPrice,
    };
