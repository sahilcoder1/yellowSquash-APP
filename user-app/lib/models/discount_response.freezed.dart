// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscountResponse _$DiscountResponseFromJson(Map<String, dynamic> json) {
  return _DiscountResponse.fromJson(json);
}

/// @nodoc
mixin _$DiscountResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get dicountedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountResponseCopyWith<DiscountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountResponseCopyWith<$Res> {
  factory $DiscountResponseCopyWith(
          DiscountResponse value, $Res Function(DiscountResponse) then) =
      _$DiscountResponseCopyWithImpl<$Res, DiscountResponse>;
  @useResult
  $Res call({String? message, bool? status, int? dicountedPrice});
}

/// @nodoc
class _$DiscountResponseCopyWithImpl<$Res, $Val extends DiscountResponse>
    implements $DiscountResponseCopyWith<$Res> {
  _$DiscountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? dicountedPrice = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      dicountedPrice: freezed == dicountedPrice
          ? _value.dicountedPrice
          : dicountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountResponseImplCopyWith<$Res>
    implements $DiscountResponseCopyWith<$Res> {
  factory _$$DiscountResponseImplCopyWith(_$DiscountResponseImpl value,
          $Res Function(_$DiscountResponseImpl) then) =
      __$$DiscountResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, int? dicountedPrice});
}

/// @nodoc
class __$$DiscountResponseImplCopyWithImpl<$Res>
    extends _$DiscountResponseCopyWithImpl<$Res, _$DiscountResponseImpl>
    implements _$$DiscountResponseImplCopyWith<$Res> {
  __$$DiscountResponseImplCopyWithImpl(_$DiscountResponseImpl _value,
      $Res Function(_$DiscountResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? dicountedPrice = freezed,
  }) {
    return _then(_$DiscountResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      dicountedPrice: freezed == dicountedPrice
          ? _value.dicountedPrice
          : dicountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountResponseImpl implements _DiscountResponse {
  const _$DiscountResponseImpl(
      {this.message, this.status, this.dicountedPrice});

  factory _$DiscountResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final int? dicountedPrice;

  @override
  String toString() {
    return 'DiscountResponse(message: $message, status: $status, dicountedPrice: $dicountedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dicountedPrice, dicountedPrice) ||
                other.dicountedPrice == dicountedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, dicountedPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountResponseImplCopyWith<_$DiscountResponseImpl> get copyWith =>
      __$$DiscountResponseImplCopyWithImpl<_$DiscountResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountResponseImplToJson(
      this,
    );
  }
}

abstract class _DiscountResponse implements DiscountResponse {
  const factory _DiscountResponse(
      {final String? message,
      final bool? status,
      final int? dicountedPrice}) = _$DiscountResponseImpl;

  factory _DiscountResponse.fromJson(Map<String, dynamic> json) =
      _$DiscountResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  int? get dicountedPrice;
  @override
  @JsonKey(ignore: true)
  _$$DiscountResponseImplCopyWith<_$DiscountResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
