// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientDetailPayment _$PatientDetailPaymentFromJson(Map<String, dynamic> json) {
  return _PatientDetailPayment.fromJson(json);
}

/// @nodoc
mixin _$PatientDetailPayment {
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isParent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientDetailPaymentCopyWith<PatientDetailPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDetailPaymentCopyWith<$Res> {
  factory $PatientDetailPaymentCopyWith(PatientDetailPayment value,
          $Res Function(PatientDetailPayment) then) =
      _$PatientDetailPaymentCopyWithImpl<$Res, PatientDetailPayment>;
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      String? gender,
      String? image,
      bool? isParent});
}

/// @nodoc
class _$PatientDetailPaymentCopyWithImpl<$Res,
        $Val extends PatientDetailPayment>
    implements $PatientDetailPaymentCopyWith<$Res> {
  _$PatientDetailPaymentCopyWithImpl(this._value, this._then);

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
    Object? age = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? isParent = freezed,
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientDetailPaymentImplCopyWith<$Res>
    implements $PatientDetailPaymentCopyWith<$Res> {
  factory _$$PatientDetailPaymentImplCopyWith(_$PatientDetailPaymentImpl value,
          $Res Function(_$PatientDetailPaymentImpl) then) =
      __$$PatientDetailPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phoneNumber,
      int? age,
      String? gender,
      String? image,
      bool? isParent});
}

/// @nodoc
class __$$PatientDetailPaymentImplCopyWithImpl<$Res>
    extends _$PatientDetailPaymentCopyWithImpl<$Res, _$PatientDetailPaymentImpl>
    implements _$$PatientDetailPaymentImplCopyWith<$Res> {
  __$$PatientDetailPaymentImplCopyWithImpl(_$PatientDetailPaymentImpl _value,
      $Res Function(_$PatientDetailPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phoneNumber = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? isParent = freezed,
  }) {
    return _then(_$PatientDetailPaymentImpl(
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
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isParent: freezed == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientDetailPaymentImpl implements _PatientDetailPayment {
  _$PatientDetailPaymentImpl(
      {this.fullName,
      this.emailId,
      this.phoneNumber,
      this.age,
      this.gender,
      this.image,
      this.isParent});

  factory _$PatientDetailPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientDetailPaymentImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phoneNumber;
  @override
  final int? age;
  @override
  final String? gender;
  @override
  final String? image;
  @override
  final bool? isParent;

  @override
  String toString() {
    return 'PatientDetailPayment(fullName: $fullName, emailId: $emailId, phoneNumber: $phoneNumber, age: $age, gender: $gender, image: $image, isParent: $isParent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientDetailPaymentImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isParent, isParent) ||
                other.isParent == isParent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, emailId, phoneNumber,
      age, gender, image, isParent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientDetailPaymentImplCopyWith<_$PatientDetailPaymentImpl>
      get copyWith =>
          __$$PatientDetailPaymentImplCopyWithImpl<_$PatientDetailPaymentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientDetailPaymentImplToJson(
      this,
    );
  }
}

abstract class _PatientDetailPayment implements PatientDetailPayment {
  factory _PatientDetailPayment(
      {final String? fullName,
      final String? emailId,
      final String? phoneNumber,
      final int? age,
      final String? gender,
      final String? image,
      final bool? isParent}) = _$PatientDetailPaymentImpl;

  factory _PatientDetailPayment.fromJson(Map<String, dynamic> json) =
      _$PatientDetailPaymentImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phoneNumber;
  @override
  int? get age;
  @override
  String? get gender;
  @override
  String? get image;
  @override
  bool? get isParent;
  @override
  @JsonKey(ignore: true)
  _$$PatientDetailPaymentImplCopyWith<_$PatientDetailPaymentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
