// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebinarVerifyResponse _$WebinarVerifyResponseFromJson(
    Map<String, dynamic> json) {
  return _WebinarVerifyResponse.fromJson(json);
}

/// @nodoc
mixin _$WebinarVerifyResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VebinarVerifyData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarVerifyResponseCopyWith<WebinarVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarVerifyResponseCopyWith<$Res> {
  factory $WebinarVerifyResponseCopyWith(WebinarVerifyResponse value,
          $Res Function(WebinarVerifyResponse) then) =
      _$WebinarVerifyResponseCopyWithImpl<$Res, WebinarVerifyResponse>;
  @useResult
  $Res call({bool? status, String? message, VebinarVerifyData? data});

  $VebinarVerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WebinarVerifyResponseCopyWithImpl<$Res,
        $Val extends WebinarVerifyResponse>
    implements $WebinarVerifyResponseCopyWith<$Res> {
  _$WebinarVerifyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VebinarVerifyData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VebinarVerifyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VebinarVerifyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarVerifyResponseImplCopyWith<$Res>
    implements $WebinarVerifyResponseCopyWith<$Res> {
  factory _$$WebinarVerifyResponseImplCopyWith(
          _$WebinarVerifyResponseImpl value,
          $Res Function(_$WebinarVerifyResponseImpl) then) =
      __$$WebinarVerifyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, VebinarVerifyData? data});

  @override
  $VebinarVerifyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WebinarVerifyResponseImplCopyWithImpl<$Res>
    extends _$WebinarVerifyResponseCopyWithImpl<$Res,
        _$WebinarVerifyResponseImpl>
    implements _$$WebinarVerifyResponseImplCopyWith<$Res> {
  __$$WebinarVerifyResponseImplCopyWithImpl(_$WebinarVerifyResponseImpl _value,
      $Res Function(_$WebinarVerifyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WebinarVerifyResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VebinarVerifyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarVerifyResponseImpl implements _WebinarVerifyResponse {
  const _$WebinarVerifyResponseImpl({this.status, this.message, this.data});

  factory _$WebinarVerifyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarVerifyResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final VebinarVerifyData? data;

  @override
  String toString() {
    return 'WebinarVerifyResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarVerifyResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarVerifyResponseImplCopyWith<_$WebinarVerifyResponseImpl>
      get copyWith => __$$WebinarVerifyResponseImplCopyWithImpl<
          _$WebinarVerifyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarVerifyResponseImplToJson(
      this,
    );
  }
}

abstract class _WebinarVerifyResponse implements WebinarVerifyResponse {
  const factory _WebinarVerifyResponse(
      {final bool? status,
      final String? message,
      final VebinarVerifyData? data}) = _$WebinarVerifyResponseImpl;

  factory _WebinarVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$WebinarVerifyResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  VebinarVerifyData? get data;
  @override
  @JsonKey(ignore: true)
  _$$WebinarVerifyResponseImplCopyWith<_$WebinarVerifyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VebinarVerifyData _$VebinarVerifyDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$VebinarVerifyData {
  String? get fullName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get webinarId => throw _privateConstructorUsedError;
  String? get programName => throw _privateConstructorUsedError;
  String? get razorpayPaymentId => throw _privateConstructorUsedError;
  String? get razorpayOrderId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  String? get entity => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VebinarVerifyDataCopyWith<VebinarVerifyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VebinarVerifyDataCopyWith<$Res> {
  factory $VebinarVerifyDataCopyWith(
          VebinarVerifyData value, $Res Function(VebinarVerifyData) then) =
      _$VebinarVerifyDataCopyWithImpl<$Res, VebinarVerifyData>;
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phone,
      String? userId,
      String? webinarId,
      String? programName,
      String? razorpayPaymentId,
      String? razorpayOrderId,
      int? amount,
      String? currency,
      String? method,
      String? entity,
      DateTime? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class _$VebinarVerifyDataCopyWithImpl<$Res, $Val extends VebinarVerifyData>
    implements $VebinarVerifyDataCopyWith<$Res> {
  _$VebinarVerifyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? webinarId = freezed,
    Object? programName = freezed,
    Object? razorpayPaymentId = freezed,
    Object? razorpayOrderId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? method = freezed,
    Object? entity = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? v = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayPaymentId: freezed == razorpayPaymentId
          ? _value.razorpayPaymentId
          : razorpayPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayOrderId: freezed == razorpayOrderId
          ? _value.razorpayOrderId
          : razorpayOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$DataImplCopyWith<$Res>
    implements $VebinarVerifyDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? emailId,
      String? phone,
      String? userId,
      String? webinarId,
      String? programName,
      String? razorpayPaymentId,
      String? razorpayOrderId,
      int? amount,
      String? currency,
      String? method,
      String? entity,
      DateTime? createdAt,
      String? id,
      int? v});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$VebinarVerifyDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? emailId = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? webinarId = freezed,
    Object? programName = freezed,
    Object? razorpayPaymentId = freezed,
    Object? razorpayOrderId = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? method = freezed,
    Object? entity = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? v = freezed,
  }) {
    return _then(_$DataImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as String?,
      programName: freezed == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayPaymentId: freezed == razorpayPaymentId
          ? _value.razorpayPaymentId
          : razorpayPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      razorpayOrderId: freezed == razorpayOrderId
          ? _value.razorpayOrderId
          : razorpayOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.fullName,
      this.emailId,
      this.phone,
      this.userId,
      this.webinarId,
      this.programName,
      this.razorpayPaymentId,
      this.razorpayOrderId,
      this.amount,
      this.currency,
      this.method,
      this.entity,
      this.createdAt,
      this.id,
      this.v});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? emailId;
  @override
  final String? phone;
  @override
  final String? userId;
  @override
  final String? webinarId;
  @override
  final String? programName;
  @override
  final String? razorpayPaymentId;
  @override
  final String? razorpayOrderId;
  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final String? method;
  @override
  final String? entity;
  @override
  final DateTime? createdAt;
  @override
  final String? id;
  @override
  final int? v;

  @override
  String toString() {
    return 'VebinarVerifyData(fullName: $fullName, emailId: $emailId, phone: $phone, userId: $userId, webinarId: $webinarId, programName: $programName, razorpayPaymentId: $razorpayPaymentId, razorpayOrderId: $razorpayOrderId, amount: $amount, currency: $currency, method: $method, entity: $entity, createdAt: $createdAt, id: $id, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.webinarId, webinarId) ||
                other.webinarId == webinarId) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.razorpayPaymentId, razorpayPaymentId) ||
                other.razorpayPaymentId == razorpayPaymentId) &&
            (identical(other.razorpayOrderId, razorpayOrderId) ||
                other.razorpayOrderId == razorpayOrderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      emailId,
      phone,
      userId,
      webinarId,
      programName,
      razorpayPaymentId,
      razorpayOrderId,
      amount,
      currency,
      method,
      entity,
      createdAt,
      id,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements VebinarVerifyData {
  const factory _Data(
      {final String? fullName,
      final String? emailId,
      final String? phone,
      final String? userId,
      final String? webinarId,
      final String? programName,
      final String? razorpayPaymentId,
      final String? razorpayOrderId,
      final int? amount,
      final String? currency,
      final String? method,
      final String? entity,
      final DateTime? createdAt,
      final String? id,
      final int? v}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get emailId;
  @override
  String? get phone;
  @override
  String? get userId;
  @override
  String? get webinarId;
  @override
  String? get programName;
  @override
  String? get razorpayPaymentId;
  @override
  String? get razorpayOrderId;
  @override
  int? get amount;
  @override
  String? get currency;
  @override
  String? get method;
  @override
  String? get entity;
  @override
  DateTime? get createdAt;
  @override
  String? get id;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
