// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_payment_verified_payload_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramPaymentVerifiedPayloadModal _$ProgramPaymentVerifiedPayloadModalFromJson(
    Map<String, dynamic> json) {
  return _ProgramPaymentVerifiedPayloadModal.fromJson(json);
}

/// @nodoc
mixin _$ProgramPaymentVerifiedPayloadModal {
  @JsonKey(name: 'razorpay_order_id')
  String? get razorpayOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'razorpay_payment_id')
  String? get razorpayPaymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'razorpay_signature')
  String? get razorpaySignature => throw _privateConstructorUsedError;
  String? get planType => throw _privateConstructorUsedError;
  String? get planSubType => throw _privateConstructorUsedError;
  PayerDetails? get payerDetails => throw _privateConstructorUsedError;
  List<PatientDetailPayment>? get patientDetails =>
      throw _privateConstructorUsedError;
  Observer? get observer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramPaymentVerifiedPayloadModalCopyWith<
          ProgramPaymentVerifiedPayloadModal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramPaymentVerifiedPayloadModalCopyWith<$Res> {
  factory $ProgramPaymentVerifiedPayloadModalCopyWith(
          ProgramPaymentVerifiedPayloadModal value,
          $Res Function(ProgramPaymentVerifiedPayloadModal) then) =
      _$ProgramPaymentVerifiedPayloadModalCopyWithImpl<$Res,
          ProgramPaymentVerifiedPayloadModal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'razorpay_order_id') String? razorpayOrderId,
      @JsonKey(name: 'razorpay_payment_id') String? razorpayPaymentId,
      @JsonKey(name: 'razorpay_signature') String? razorpaySignature,
      String? planType,
      String? planSubType,
      PayerDetails? payerDetails,
      List<PatientDetailPayment>? patientDetails,
      Observer? observer});

  $PayerDetailsCopyWith<$Res>? get payerDetails;
  $ObserverCopyWith<$Res>? get observer;
}

/// @nodoc
class _$ProgramPaymentVerifiedPayloadModalCopyWithImpl<$Res,
        $Val extends ProgramPaymentVerifiedPayloadModal>
    implements $ProgramPaymentVerifiedPayloadModalCopyWith<$Res> {
  _$ProgramPaymentVerifiedPayloadModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpayOrderId = freezed,
    Object? razorpayPaymentId = freezed,
    Object? razorpaySignature = freezed,
    Object? planType = freezed,
    Object? planSubType = freezed,
    Object? payerDetails = freezed,
    Object? patientDetails = freezed,
    Object? observer = freezed,
  }) {
    return _then(_value.copyWith(
      razorpayOrderId: freezed == razorpayOrderId
          ? _value.razorpayOrderId
          : razorpayOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayPaymentId: freezed == razorpayPaymentId
          ? _value.razorpayPaymentId
          : razorpayPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpaySignature: freezed == razorpaySignature
          ? _value.razorpaySignature
          : razorpaySignature // ignore: cast_nullable_to_non_nullable
              as String?,
      planType: freezed == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String?,
      planSubType: freezed == planSubType
          ? _value.planSubType
          : planSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      payerDetails: freezed == payerDetails
          ? _value.payerDetails
          : payerDetails // ignore: cast_nullable_to_non_nullable
              as PayerDetails?,
      patientDetails: freezed == patientDetails
          ? _value.patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as List<PatientDetailPayment>?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayerDetailsCopyWith<$Res>? get payerDetails {
    if (_value.payerDetails == null) {
      return null;
    }

    return $PayerDetailsCopyWith<$Res>(_value.payerDetails!, (value) {
      return _then(_value.copyWith(payerDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ObserverCopyWith<$Res>? get observer {
    if (_value.observer == null) {
      return null;
    }

    return $ObserverCopyWith<$Res>(_value.observer!, (value) {
      return _then(_value.copyWith(observer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramPaymentVerifiedPayloadModalImplCopyWith<$Res>
    implements $ProgramPaymentVerifiedPayloadModalCopyWith<$Res> {
  factory _$$ProgramPaymentVerifiedPayloadModalImplCopyWith(
          _$ProgramPaymentVerifiedPayloadModalImpl value,
          $Res Function(_$ProgramPaymentVerifiedPayloadModalImpl) then) =
      __$$ProgramPaymentVerifiedPayloadModalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'razorpay_order_id') String? razorpayOrderId,
      @JsonKey(name: 'razorpay_payment_id') String? razorpayPaymentId,
      @JsonKey(name: 'razorpay_signature') String? razorpaySignature,
      String? planType,
      String? planSubType,
      PayerDetails? payerDetails,
      List<PatientDetailPayment>? patientDetails,
      Observer? observer});

  @override
  $PayerDetailsCopyWith<$Res>? get payerDetails;
  @override
  $ObserverCopyWith<$Res>? get observer;
}

/// @nodoc
class __$$ProgramPaymentVerifiedPayloadModalImplCopyWithImpl<$Res>
    extends _$ProgramPaymentVerifiedPayloadModalCopyWithImpl<$Res,
        _$ProgramPaymentVerifiedPayloadModalImpl>
    implements _$$ProgramPaymentVerifiedPayloadModalImplCopyWith<$Res> {
  __$$ProgramPaymentVerifiedPayloadModalImplCopyWithImpl(
      _$ProgramPaymentVerifiedPayloadModalImpl _value,
      $Res Function(_$ProgramPaymentVerifiedPayloadModalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? razorpayOrderId = freezed,
    Object? razorpayPaymentId = freezed,
    Object? razorpaySignature = freezed,
    Object? planType = freezed,
    Object? planSubType = freezed,
    Object? payerDetails = freezed,
    Object? patientDetails = freezed,
    Object? observer = freezed,
  }) {
    return _then(_$ProgramPaymentVerifiedPayloadModalImpl(
      razorpayOrderId: freezed == razorpayOrderId
          ? _value.razorpayOrderId
          : razorpayOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayPaymentId: freezed == razorpayPaymentId
          ? _value.razorpayPaymentId
          : razorpayPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpaySignature: freezed == razorpaySignature
          ? _value.razorpaySignature
          : razorpaySignature // ignore: cast_nullable_to_non_nullable
              as String?,
      planType: freezed == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String?,
      planSubType: freezed == planSubType
          ? _value.planSubType
          : planSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      payerDetails: freezed == payerDetails
          ? _value.payerDetails
          : payerDetails // ignore: cast_nullable_to_non_nullable
              as PayerDetails?,
      patientDetails: freezed == patientDetails
          ? _value._patientDetails
          : patientDetails // ignore: cast_nullable_to_non_nullable
              as List<PatientDetailPayment>?,
      observer: freezed == observer
          ? _value.observer
          : observer // ignore: cast_nullable_to_non_nullable
              as Observer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramPaymentVerifiedPayloadModalImpl
    implements _ProgramPaymentVerifiedPayloadModal {
  _$ProgramPaymentVerifiedPayloadModalImpl(
      {@JsonKey(name: 'razorpay_order_id') this.razorpayOrderId,
      @JsonKey(name: 'razorpay_payment_id') this.razorpayPaymentId,
      @JsonKey(name: 'razorpay_signature') this.razorpaySignature,
      this.planType,
      this.planSubType,
      this.payerDetails,
      final List<PatientDetailPayment>? patientDetails,
      this.observer})
      : _patientDetails = patientDetails;

  factory _$ProgramPaymentVerifiedPayloadModalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProgramPaymentVerifiedPayloadModalImplFromJson(json);

  @override
  @JsonKey(name: 'razorpay_order_id')
  final String? razorpayOrderId;
  @override
  @JsonKey(name: 'razorpay_payment_id')
  final String? razorpayPaymentId;
  @override
  @JsonKey(name: 'razorpay_signature')
  final String? razorpaySignature;
  @override
  final String? planType;
  @override
  final String? planSubType;
  @override
  final PayerDetails? payerDetails;
  final List<PatientDetailPayment>? _patientDetails;
  @override
  List<PatientDetailPayment>? get patientDetails {
    final value = _patientDetails;
    if (value == null) return null;
    if (_patientDetails is EqualUnmodifiableListView) return _patientDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Observer? observer;

  @override
  String toString() {
    return 'ProgramPaymentVerifiedPayloadModal(razorpayOrderId: $razorpayOrderId, razorpayPaymentId: $razorpayPaymentId, razorpaySignature: $razorpaySignature, planType: $planType, planSubType: $planSubType, payerDetails: $payerDetails, patientDetails: $patientDetails, observer: $observer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramPaymentVerifiedPayloadModalImpl &&
            (identical(other.razorpayOrderId, razorpayOrderId) ||
                other.razorpayOrderId == razorpayOrderId) &&
            (identical(other.razorpayPaymentId, razorpayPaymentId) ||
                other.razorpayPaymentId == razorpayPaymentId) &&
            (identical(other.razorpaySignature, razorpaySignature) ||
                other.razorpaySignature == razorpaySignature) &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            (identical(other.planSubType, planSubType) ||
                other.planSubType == planSubType) &&
            (identical(other.payerDetails, payerDetails) ||
                other.payerDetails == payerDetails) &&
            const DeepCollectionEquality()
                .equals(other._patientDetails, _patientDetails) &&
            (identical(other.observer, observer) ||
                other.observer == observer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      razorpayOrderId,
      razorpayPaymentId,
      razorpaySignature,
      planType,
      planSubType,
      payerDetails,
      const DeepCollectionEquality().hash(_patientDetails),
      observer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramPaymentVerifiedPayloadModalImplCopyWith<
          _$ProgramPaymentVerifiedPayloadModalImpl>
      get copyWith => __$$ProgramPaymentVerifiedPayloadModalImplCopyWithImpl<
          _$ProgramPaymentVerifiedPayloadModalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramPaymentVerifiedPayloadModalImplToJson(
      this,
    );
  }
}

abstract class _ProgramPaymentVerifiedPayloadModal
    implements ProgramPaymentVerifiedPayloadModal {
  factory _ProgramPaymentVerifiedPayloadModal(
      {@JsonKey(name: 'razorpay_order_id') final String? razorpayOrderId,
      @JsonKey(name: 'razorpay_payment_id') final String? razorpayPaymentId,
      @JsonKey(name: 'razorpay_signature') final String? razorpaySignature,
      final String? planType,
      final String? planSubType,
      final PayerDetails? payerDetails,
      final List<PatientDetailPayment>? patientDetails,
      final Observer? observer}) = _$ProgramPaymentVerifiedPayloadModalImpl;

  factory _ProgramPaymentVerifiedPayloadModal.fromJson(
          Map<String, dynamic> json) =
      _$ProgramPaymentVerifiedPayloadModalImpl.fromJson;

  @override
  @JsonKey(name: 'razorpay_order_id')
  String? get razorpayOrderId;
  @override
  @JsonKey(name: 'razorpay_payment_id')
  String? get razorpayPaymentId;
  @override
  @JsonKey(name: 'razorpay_signature')
  String? get razorpaySignature;
  @override
  String? get planType;
  @override
  String? get planSubType;
  @override
  PayerDetails? get payerDetails;
  @override
  List<PatientDetailPayment>? get patientDetails;
  @override
  Observer? get observer;
  @override
  @JsonKey(ignore: true)
  _$$ProgramPaymentVerifiedPayloadModalImplCopyWith<
          _$ProgramPaymentVerifiedPayloadModalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
