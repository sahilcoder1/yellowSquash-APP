// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_duration_discount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramDurationDiscountResponseImpl
    _$$ProgramDurationDiscountResponseImplFromJson(Map<String, dynamic> json) =>
        _$ProgramDurationDiscountResponseImpl(
          status: json['status'] as bool?,
          discountedPrice: json['discountedPrice'] == null
              ? null
              : DiscountedPrice.fromJson(
                  json['discountedPrice'] as Map<String, dynamic>),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ProgramDurationDiscountResponseImplToJson(
        _$ProgramDurationDiscountResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'discountedPrice': instance.discountedPrice,
      'message': instance.message,
    };

_$DiscountedPriceImpl _$$DiscountedPriceImplFromJson(
        Map<String, dynamic> json) =>
    _$DiscountedPriceImpl(
      planDuration: json['planDuration'] as String?,
      discount: json['discount'] as String?,
      price: json['price'] as int?,
      discountedPrice: json['discountedPrice'] as int?,
    );

Map<String, dynamic> _$$DiscountedPriceImplToJson(
        _$DiscountedPriceImpl instance) =>
    <String, dynamic>{
      'planDuration': instance.planDuration,
      'discount': instance.discount,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
    };
