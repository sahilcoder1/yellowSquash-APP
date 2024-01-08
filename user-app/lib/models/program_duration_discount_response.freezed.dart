// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_duration_discount_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramDurationDiscountResponse _$ProgramDurationDiscountResponseFromJson(
    Map<String, dynamic> json) {
  return _ProgramDurationDiscountResponse.fromJson(json);
}

/// @nodoc
mixin _$ProgramDurationDiscountResponse {
  bool? get status => throw _privateConstructorUsedError;
  DiscountedPrice? get discountedPrice => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDurationDiscountResponseCopyWith<ProgramDurationDiscountResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDurationDiscountResponseCopyWith<$Res> {
  factory $ProgramDurationDiscountResponseCopyWith(
          ProgramDurationDiscountResponse value,
          $Res Function(ProgramDurationDiscountResponse) then) =
      _$ProgramDurationDiscountResponseCopyWithImpl<$Res,
          ProgramDurationDiscountResponse>;
  @useResult
  $Res call({bool? status, DiscountedPrice? discountedPrice, String? message});

  $DiscountedPriceCopyWith<$Res>? get discountedPrice;
}

/// @nodoc
class _$ProgramDurationDiscountResponseCopyWithImpl<$Res,
        $Val extends ProgramDurationDiscountResponse>
    implements $ProgramDurationDiscountResponseCopyWith<$Res> {
  _$ProgramDurationDiscountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? discountedPrice = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as DiscountedPrice?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DiscountedPriceCopyWith<$Res>? get discountedPrice {
    if (_value.discountedPrice == null) {
      return null;
    }

    return $DiscountedPriceCopyWith<$Res>(_value.discountedPrice!, (value) {
      return _then(_value.copyWith(discountedPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramDurationDiscountResponseImplCopyWith<$Res>
    implements $ProgramDurationDiscountResponseCopyWith<$Res> {
  factory _$$ProgramDurationDiscountResponseImplCopyWith(
          _$ProgramDurationDiscountResponseImpl value,
          $Res Function(_$ProgramDurationDiscountResponseImpl) then) =
      __$$ProgramDurationDiscountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, DiscountedPrice? discountedPrice, String? message});

  @override
  $DiscountedPriceCopyWith<$Res>? get discountedPrice;
}

/// @nodoc
class __$$ProgramDurationDiscountResponseImplCopyWithImpl<$Res>
    extends _$ProgramDurationDiscountResponseCopyWithImpl<$Res,
        _$ProgramDurationDiscountResponseImpl>
    implements _$$ProgramDurationDiscountResponseImplCopyWith<$Res> {
  __$$ProgramDurationDiscountResponseImplCopyWithImpl(
      _$ProgramDurationDiscountResponseImpl _value,
      $Res Function(_$ProgramDurationDiscountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? discountedPrice = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProgramDurationDiscountResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as DiscountedPrice?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDurationDiscountResponseImpl
    implements _ProgramDurationDiscountResponse {
  const _$ProgramDurationDiscountResponseImpl(
      {this.status, this.discountedPrice, this.message});

  factory _$ProgramDurationDiscountResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProgramDurationDiscountResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final DiscountedPrice? discountedPrice;
  @override
  final String? message;

  @override
  String toString() {
    return 'ProgramDurationDiscountResponse(status: $status, discountedPrice: $discountedPrice, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDurationDiscountResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, discountedPrice, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDurationDiscountResponseImplCopyWith<
          _$ProgramDurationDiscountResponseImpl>
      get copyWith => __$$ProgramDurationDiscountResponseImplCopyWithImpl<
          _$ProgramDurationDiscountResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDurationDiscountResponseImplToJson(
      this,
    );
  }
}

abstract class _ProgramDurationDiscountResponse
    implements ProgramDurationDiscountResponse {
  const factory _ProgramDurationDiscountResponse(
      {final bool? status,
      final DiscountedPrice? discountedPrice,
      final String? message}) = _$ProgramDurationDiscountResponseImpl;

  factory _ProgramDurationDiscountResponse.fromJson(Map<String, dynamic> json) =
      _$ProgramDurationDiscountResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  DiscountedPrice? get discountedPrice;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDurationDiscountResponseImplCopyWith<
          _$ProgramDurationDiscountResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DiscountedPrice _$DiscountedPriceFromJson(Map<String, dynamic> json) {
  return _DiscountedPrice.fromJson(json);
}

/// @nodoc
mixin _$DiscountedPrice {
  String? get planDuration => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discountedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountedPriceCopyWith<DiscountedPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountedPriceCopyWith<$Res> {
  factory $DiscountedPriceCopyWith(
          DiscountedPrice value, $Res Function(DiscountedPrice) then) =
      _$DiscountedPriceCopyWithImpl<$Res, DiscountedPrice>;
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class _$DiscountedPriceCopyWithImpl<$Res, $Val extends DiscountedPrice>
    implements $DiscountedPriceCopyWith<$Res> {
  _$DiscountedPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDuration = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
  }) {
    return _then(_value.copyWith(
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountedPriceImplCopyWith<$Res>
    implements $DiscountedPriceCopyWith<$Res> {
  factory _$$DiscountedPriceImplCopyWith(_$DiscountedPriceImpl value,
          $Res Function(_$DiscountedPriceImpl) then) =
      __$$DiscountedPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class __$$DiscountedPriceImplCopyWithImpl<$Res>
    extends _$DiscountedPriceCopyWithImpl<$Res, _$DiscountedPriceImpl>
    implements _$$DiscountedPriceImplCopyWith<$Res> {
  __$$DiscountedPriceImplCopyWithImpl(
      _$DiscountedPriceImpl _value, $Res Function(_$DiscountedPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDuration = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
  }) {
    return _then(_$DiscountedPriceImpl(
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountedPriceImpl implements _DiscountedPrice {
  const _$DiscountedPriceImpl(
      {this.planDuration, this.discount, this.price, this.discountedPrice});

  factory _$DiscountedPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountedPriceImplFromJson(json);

  @override
  final String? planDuration;
  @override
  final String? discount;
  @override
  final int? price;
  @override
  final int? discountedPrice;

  @override
  String toString() {
    return 'DiscountedPrice(planDuration: $planDuration, discount: $discount, price: $price, discountedPrice: $discountedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountedPriceImpl &&
            (identical(other.planDuration, planDuration) ||
                other.planDuration == planDuration) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planDuration, discount, price, discountedPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountedPriceImplCopyWith<_$DiscountedPriceImpl> get copyWith =>
      __$$DiscountedPriceImplCopyWithImpl<_$DiscountedPriceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountedPriceImplToJson(
      this,
    );
  }
}

abstract class _DiscountedPrice implements DiscountedPrice {
  const factory _DiscountedPrice(
      {final String? planDuration,
      final String? discount,
      final int? price,
      final int? discountedPrice}) = _$DiscountedPriceImpl;

  factory _DiscountedPrice.fromJson(Map<String, dynamic> json) =
      _$DiscountedPriceImpl.fromJson;

  @override
  String? get planDuration;
  @override
  String? get discount;
  @override
  int? get price;
  @override
  int? get discountedPrice;
  @override
  @JsonKey(ignore: true)
  _$$DiscountedPriceImplCopyWith<_$DiscountedPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
