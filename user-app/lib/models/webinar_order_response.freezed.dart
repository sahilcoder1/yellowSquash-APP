// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebinarOrderResponse _$WebinarOrderResponseFromJson(Map<String, dynamic> json) {
  return _WebinarOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$WebinarOrderResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  WebinarOrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarOrderResponseCopyWith<WebinarOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarOrderResponseCopyWith<$Res> {
  factory $WebinarOrderResponseCopyWith(WebinarOrderResponse value,
          $Res Function(WebinarOrderResponse) then) =
      _$WebinarOrderResponseCopyWithImpl<$Res, WebinarOrderResponse>;
  @useResult
  $Res call({String? message, bool? status, WebinarOrderData? data});

  $WebinarOrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WebinarOrderResponseCopyWithImpl<$Res,
        $Val extends WebinarOrderResponse>
    implements $WebinarOrderResponseCopyWith<$Res> {
  _$WebinarOrderResponseCopyWithImpl(this._value, this._then);

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
              as WebinarOrderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebinarOrderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WebinarOrderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarOrderResponseImplCopyWith<$Res>
    implements $WebinarOrderResponseCopyWith<$Res> {
  factory _$$WebinarOrderResponseImplCopyWith(_$WebinarOrderResponseImpl value,
          $Res Function(_$WebinarOrderResponseImpl) then) =
      __$$WebinarOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, WebinarOrderData? data});

  @override
  $WebinarOrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WebinarOrderResponseImplCopyWithImpl<$Res>
    extends _$WebinarOrderResponseCopyWithImpl<$Res, _$WebinarOrderResponseImpl>
    implements _$$WebinarOrderResponseImplCopyWith<$Res> {
  __$$WebinarOrderResponseImplCopyWithImpl(_$WebinarOrderResponseImpl _value,
      $Res Function(_$WebinarOrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WebinarOrderResponseImpl(
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
              as WebinarOrderData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarOrderResponseImpl implements _WebinarOrderResponse {
  const _$WebinarOrderResponseImpl({this.message, this.status, this.data});

  factory _$WebinarOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarOrderResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final WebinarOrderData? data;

  @override
  String toString() {
    return 'WebinarOrderResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarOrderResponseImpl &&
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
  _$$WebinarOrderResponseImplCopyWith<_$WebinarOrderResponseImpl>
      get copyWith =>
          __$$WebinarOrderResponseImplCopyWithImpl<_$WebinarOrderResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _WebinarOrderResponse implements WebinarOrderResponse {
  const factory _WebinarOrderResponse(
      {final String? message,
      final bool? status,
      final WebinarOrderData? data}) = _$WebinarOrderResponseImpl;

  factory _WebinarOrderResponse.fromJson(Map<String, dynamic> json) =
      _$WebinarOrderResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  WebinarOrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$WebinarOrderResponseImplCopyWith<_$WebinarOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebinarOrderData _$WebinarOrderDataFromJson(Map<String, dynamic> json) {
  return _WebinarOrderData.fromJson(json);
}

/// @nodoc
mixin _$WebinarOrderData {
  String? get dataId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  String? get entity => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get amountPaid => throw _privateConstructorUsedError;
  int? get amountDue => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get receipt => throw _privateConstructorUsedError;
  dynamic get offerId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get attempts => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarOrderDataCopyWith<WebinarOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarOrderDataCopyWith<$Res> {
  factory $WebinarOrderDataCopyWith(
          WebinarOrderData value, $Res Function(WebinarOrderData) then) =
      _$WebinarOrderDataCopyWithImpl<$Res, WebinarOrderData>;
  @useResult
  $Res call(
      {String? dataId,
      String? userId,
      String? webinarId,
      String? couponCode,
      String? entity,
      int? amount,
      int? amountPaid,
      int? amountDue,
      String? currency,
      String? receipt,
      dynamic offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      int? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class _$WebinarOrderDataCopyWithImpl<$Res, $Val extends WebinarOrderData>
    implements $WebinarOrderDataCopyWith<$Res> {
  _$WebinarOrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = freezed,
    Object? userId = freezed,
    Object? webinarId = freezed,
    Object? couponCode = freezed,
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
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
abstract class _$$WebinarOrderDataImplCopyWith<$Res>
    implements $WebinarOrderDataCopyWith<$Res> {
  factory _$$WebinarOrderDataImplCopyWith(_$WebinarOrderDataImpl value,
          $Res Function(_$WebinarOrderDataImpl) then) =
      __$$WebinarOrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dataId,
      String? userId,
      String? webinarId,
      String? couponCode,
      String? entity,
      int? amount,
      int? amountPaid,
      int? amountDue,
      String? currency,
      String? receipt,
      dynamic offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      int? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class __$$WebinarOrderDataImplCopyWithImpl<$Res>
    extends _$WebinarOrderDataCopyWithImpl<$Res, _$WebinarOrderDataImpl>
    implements _$$WebinarOrderDataImplCopyWith<$Res> {
  __$$WebinarOrderDataImplCopyWithImpl(_$WebinarOrderDataImpl _value,
      $Res Function(_$WebinarOrderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = freezed,
    Object? userId = freezed,
    Object? webinarId = freezed,
    Object? couponCode = freezed,
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
    return _then(_$WebinarOrderDataImpl(
      dataId: freezed == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
class _$WebinarOrderDataImpl implements _WebinarOrderData {
  const _$WebinarOrderDataImpl(
      {this.dataId,
      this.userId,
      this.webinarId,
      this.couponCode,
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

  factory _$WebinarOrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarOrderDataImplFromJson(json);

  @override
  final String? dataId;
  @override
  final String? userId;
  @override
  final String? webinarId;
  @override
  final String? couponCode;
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
  final dynamic offerId;
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
    return 'WebinarOrderData(dataId: $dataId, userId: $userId, webinarId: $webinarId, couponCode: $couponCode, entity: $entity, amount: $amount, amountPaid: $amountPaid, amountDue: $amountDue, currency: $currency, receipt: $receipt, offerId: $offerId, status: $status, attempts: $attempts, notes: $notes, createdAt: $createdAt, id: $id, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarOrderDataImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountPaid, amountPaid) ||
                other.amountPaid == amountPaid) &&
            (identical(other.amountDue, amountDue) ||
                other.amountDue == amountDue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            const DeepCollectionEquality().equals(other.offerId, offerId) &&
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
      webinarId,
      couponCode,
      entity,
      amount,
      amountPaid,
      amountDue,
      currency,
      receipt,
      const DeepCollectionEquality().hash(offerId),
      status,
      attempts,
      const DeepCollectionEquality().hash(_notes),
      createdAt,
      id,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarOrderDataImplCopyWith<_$WebinarOrderDataImpl> get copyWith =>
      __$$WebinarOrderDataImplCopyWithImpl<_$WebinarOrderDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarOrderDataImplToJson(
      this,
    );
  }
}

abstract class _WebinarOrderData implements WebinarOrderData {
  const factory _WebinarOrderData(
      {final String? dataId,
      final String? userId,
      final String? webinarId,
      final String? couponCode,
      final String? entity,
      final int? amount,
      final int? amountPaid,
      final int? amountDue,
      final String? currency,
      final String? receipt,
      final dynamic offerId,
      final String? status,
      final int? attempts,
      final List<dynamic>? notes,
      final int? createdAt,
      final String? id,
      final int? v}) = _$WebinarOrderDataImpl;

  factory _WebinarOrderData.fromJson(Map<String, dynamic> json) =
      _$WebinarOrderDataImpl.fromJson;

  @override
  String? get dataId;
  @override
  String? get userId;
  @override
  String? get webinarId;
  @override
  String? get couponCode;
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
  dynamic get offerId;
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
  _$$WebinarOrderDataImplCopyWith<_$WebinarOrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
