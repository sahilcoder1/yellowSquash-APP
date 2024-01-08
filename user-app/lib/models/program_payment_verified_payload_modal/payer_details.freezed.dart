// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payer_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayerDetails _$PayerDetailsFromJson(Map<String, dynamic> json) {
  return _PayerDetails.fromJson(json);
}

/// @nodoc
mixin _$PayerDetails {
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayerDetailsCopyWith<PayerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayerDetailsCopyWith<$Res> {
  factory $PayerDetailsCopyWith(
          PayerDetails value, $Res Function(PayerDetails) then) =
      _$PayerDetailsCopyWithImpl<$Res, PayerDetails>;
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phoneNumber,
      Address? address});

  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$PayerDetailsCopyWithImpl<$Res, $Val extends PayerDetails>
    implements $PayerDetailsCopyWith<$Res> {
  _$PayerDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayerDetailsImplCopyWith<$Res>
    implements $PayerDetailsCopyWith<$Res> {
  factory _$$PayerDetailsImplCopyWith(
          _$PayerDetailsImpl value, $Res Function(_$PayerDetailsImpl) then) =
      __$$PayerDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phoneNumber,
      Address? address});

  @override
  $AddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$PayerDetailsImplCopyWithImpl<$Res>
    extends _$PayerDetailsCopyWithImpl<$Res, _$PayerDetailsImpl>
    implements _$$PayerDetailsImplCopyWith<$Res> {
  __$$PayerDetailsImplCopyWithImpl(
      _$PayerDetailsImpl _value, $Res Function(_$PayerDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_$PayerDetailsImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayerDetailsImpl implements _PayerDetails {
  _$PayerDetailsImpl(
      {this.fullName, this.emailId, this.phoneNumber, this.address});

  factory _$PayerDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayerDetailsImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phoneNumber;
  @override
  final Address? address;

  @override
  String toString() {
    return 'PayerDetails(fullName: $fullName, emailId: $emailId, phoneNumber: $phoneNumber, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayerDetailsImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, emailId, phoneNumber, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayerDetailsImplCopyWith<_$PayerDetailsImpl> get copyWith =>
      __$$PayerDetailsImplCopyWithImpl<_$PayerDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayerDetailsImplToJson(
      this,
    );
  }
}

abstract class _PayerDetails implements PayerDetails {
  factory _PayerDetails(
      {final String? fullName,
      final String? emailId,
      final String? phoneNumber,
      final Address? address}) = _$PayerDetailsImpl;

  factory _PayerDetails.fromJson(Map<String, dynamic> json) =
      _$PayerDetailsImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phoneNumber;
  @override
  Address? get address;
  @override
  @JsonKey(ignore: true)
  _$$PayerDetailsImplCopyWith<_$PayerDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
