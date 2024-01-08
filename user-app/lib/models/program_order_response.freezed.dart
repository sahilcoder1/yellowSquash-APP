// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramOrderResponse _$ProgramOrderResponseFromJson(Map<String, dynamic> json) {
  return _ProgramOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$ProgramOrderResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  ProgramOrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramOrderResponseCopyWith<ProgramOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramOrderResponseCopyWith<$Res> {
  factory $ProgramOrderResponseCopyWith(ProgramOrderResponse value,
          $Res Function(ProgramOrderResponse) then) =
      _$ProgramOrderResponseCopyWithImpl<$Res, ProgramOrderResponse>;
  @useResult
  $Res call({String? message, bool? status, ProgramOrderData? data});

  $ProgramOrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProgramOrderResponseCopyWithImpl<$Res,
        $Val extends ProgramOrderResponse>
    implements $ProgramOrderResponseCopyWith<$Res> {
  _$ProgramOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProgramOrderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramOrderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProgramOrderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramOrderResponseImplCopyWith<$Res>
    implements $ProgramOrderResponseCopyWith<$Res> {
  factory _$$ProgramOrderResponseImplCopyWith(_$ProgramOrderResponseImpl value,
          $Res Function(_$ProgramOrderResponseImpl) then) =
      __$$ProgramOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, ProgramOrderData? data});

  @override
  $ProgramOrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProgramOrderResponseImplCopyWithImpl<$Res>
    extends _$ProgramOrderResponseCopyWithImpl<$Res, _$ProgramOrderResponseImpl>
    implements _$$ProgramOrderResponseImplCopyWith<$Res> {
  __$$ProgramOrderResponseImplCopyWithImpl(_$ProgramOrderResponseImpl _value,
      $Res Function(_$ProgramOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProgramOrderResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProgramOrderData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramOrderResponseImpl implements _ProgramOrderResponse {
  const _$ProgramOrderResponseImpl({this.message, this.status, this.data});

  factory _$ProgramOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramOrderResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final ProgramOrderData? data;

  @override
  String toString() {
    return 'ProgramOrderResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramOrderResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramOrderResponseImplCopyWith<_$ProgramOrderResponseImpl>
      get copyWith =>
          __$$ProgramOrderResponseImplCopyWithImpl<_$ProgramOrderResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _ProgramOrderResponse implements ProgramOrderResponse {
  const factory _ProgramOrderResponse(
      {final String? message,
      final bool? status,
      final ProgramOrderData? data}) = _$ProgramOrderResponseImpl;

  factory _ProgramOrderResponse.fromJson(Map<String, dynamic> json) =
      _$ProgramOrderResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  ProgramOrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProgramOrderResponseImplCopyWith<_$ProgramOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgramOrderData _$ProgramOrderDataFromJson(Map<String, dynamic> json) {
  return _ProgramOrderData.fromJson(json);
}

/// @nodoc
mixin _$ProgramOrderData {
  String? get dataId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get programId => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  String? get planDuration => throw _privateConstructorUsedError;
  String? get entity => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get amountPaid => throw _privateConstructorUsedError;
  int? get amountDue => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get receipt => throw _privateConstructorUsedError;
  String? get offerId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get attempts => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramOrderDataCopyWith<ProgramOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramOrderDataCopyWith<$Res> {
  factory $ProgramOrderDataCopyWith(
          ProgramOrderData value, $Res Function(ProgramOrderData) then) =
      _$ProgramOrderDataCopyWithImpl<$Res, ProgramOrderData>;
  @useResult
  $Res call(
      {String? dataId,
      String? userId,
      String? programId,
      String? couponCode,
      String? planDuration,
      String? entity,
      int? amount,
      int? amountPaid,
      int? amountDue,
      String? currency,
      String? receipt,
      String? offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      int? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class _$ProgramOrderDataCopyWithImpl<$Res, $Val extends ProgramOrderData>
    implements $ProgramOrderDataCopyWith<$Res> {
  _$ProgramOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = freezed,
    Object? userId = freezed,
    Object? programId = freezed,
    Object? couponCode = freezed,
    Object? planDuration = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? amountDue = freezed,
    Object? currency = freezed,
    Object? receipt = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDue: freezed == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: freezed == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramOrderDataImplCopyWith<$Res>
    implements $ProgramOrderDataCopyWith<$Res> {
  factory _$$ProgramOrderDataImplCopyWith(_$ProgramOrderDataImpl value,
          $Res Function(_$ProgramOrderDataImpl) then) =
      __$$ProgramOrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dataId,
      String? userId,
      String? programId,
      String? couponCode,
      String? planDuration,
      String? entity,
      int? amount,
      int? amountPaid,
      int? amountDue,
      String? currency,
      String? receipt,
      String? offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      int? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class __$$ProgramOrderDataImplCopyWithImpl<$Res>
    extends _$ProgramOrderDataCopyWithImpl<$Res, _$ProgramOrderDataImpl>
    implements _$$ProgramOrderDataImplCopyWith<$Res> {
  __$$ProgramOrderDataImplCopyWithImpl(_$ProgramOrderDataImpl _value,
      $Res Function(_$ProgramOrderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = freezed,
    Object? userId = freezed,
    Object? programId = freezed,
    Object? couponCode = freezed,
    Object? planDuration = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? amountDue = freezed,
    Object? currency = freezed,
    Object? receipt = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ProgramOrderDataImpl(
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountPaid: freezed == amountPaid
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDue: freezed == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String?,
      offerId: freezed == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: freezed == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramOrderDataImpl implements _ProgramOrderData {
  const _$ProgramOrderDataImpl(
      {this.dataId,
      this.userId,
      this.programId,
      this.couponCode,
      this.planDuration,
      this.entity,
      this.amount,
      this.amountPaid,
      this.amountDue,
      this.currency,
      this.receipt,
      this.offerId,
      this.status,
      this.attempts,
      final List<dynamic>? notes,
      this.createdAt,
      this.id,
      this.v})
      : _notes = notes;

  factory _$ProgramOrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramOrderDataImplFromJson(json);

  @override
  final String? dataId;
  @override
  final String? userId;
  @override
  final String? programId;
  @override
  final String? couponCode;
  @override
  final String? planDuration;
  @override
  final String? entity;
  @override
  final int? amount;
  @override
  final int? amountPaid;
  @override
  final int? amountDue;
  @override
  final String? currency;
  @override
  final String? receipt;
  @override
  final String? offerId;
  @override
  final String? status;
  @override
  final int? attempts;
  final List<dynamic>? _notes;
  @override
  List<dynamic>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? createdAt;
  @override
  final String? id;
  @override
  final int? v;

  @override
  String toString() {
    return 'ProgramOrderData(dataId: $dataId, userId: $userId, programId: $programId, couponCode: $couponCode, planDuration: $planDuration, entity: $entity, amount: $amount, amountPaid: $amountPaid, amountDue: $amountDue, currency: $currency, receipt: $receipt, offerId: $offerId, status: $status, attempts: $attempts, notes: $notes, createdAt: $createdAt, id: $id, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramOrderDataImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.planDuration, planDuration) ||
                other.planDuration == planDuration) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.amountDue, amountDue) ||
                other.amountDue == amountDue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataId,
      userId,
      programId,
      couponCode,
      planDuration,
      entity,
      amount,
      amountPaid,
      amountDue,
      currency,
      receipt,
      offerId,
      status,
      attempts,
      const DeepCollectionEquality().hash(_notes),
      createdAt,
      id,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramOrderDataImplCopyWith<_$ProgramOrderDataImpl> get copyWith =>
      __$$ProgramOrderDataImplCopyWithImpl<_$ProgramOrderDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramOrderDataImplToJson(
      this,
    );
  }
}

abstract class _ProgramOrderData implements ProgramOrderData {
  const factory _ProgramOrderData(
      {final String? dataId,
      final String? userId,
      final String? programId,
      final String? couponCode,
      final String? planDuration,
      final String? entity,
      final int? amount,
      final int? amountPaid,
      final int? amountDue,
      final String? currency,
      final String? receipt,
      final String? offerId,
      final String? status,
      final int? attempts,
      final List<dynamic>? notes,
      final int? createdAt,
      final String? id,
      final int? v}) = _$ProgramOrderDataImpl;

  factory _ProgramOrderData.fromJson(Map<String, dynamic> json) =
      _$ProgramOrderDataImpl.fromJson;

  @override
  String? get dataId;
  @override
  String? get userId;
  @override
  String? get programId;
  @override
  String? get couponCode;
  @override
  String? get planDuration;
  @override
  String? get entity;
  @override
  int? get amount;
  @override
  int? get amountPaid;
  @override
  int? get amountDue;
  @override
  String? get currency;
  @override
  String? get receipt;
  @override
  String? get offerId;
  @override
  String? get status;
  @override
  int? get attempts;
  @override
  List<dynamic>? get notes;
  @override
  int? get createdAt;
  @override
  String? get id;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ProgramOrderDataImplCopyWith<_$ProgramOrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
