// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pause_resume_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PauseResumeResponse _$PauseResumeResponseFromJson(Map<String, dynamic> json) {
  return _PauseResumeResponse.fromJson(json);
}

/// @nodoc
mixin _$PauseResumeResponse {
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PauseResumeResponseCopyWith<PauseResumeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseResumeResponseCopyWith<$Res> {
  factory $PauseResumeResponseCopyWith(
          PauseResumeResponse value, $Res Function(PauseResumeResponse) then) =
      _$PauseResumeResponseCopyWithImpl<$Res, PauseResumeResponse>;
  @useResult
  $Res call({bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PauseResumeResponseCopyWithImpl<$Res, $Val extends PauseResumeResponse>
    implements $PauseResumeResponseCopyWith<$Res> {
  _$PauseResumeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PauseResumeResponseImplCopyWith<$Res>
    implements $PauseResumeResponseCopyWith<$Res> {
  factory _$$PauseResumeResponseImplCopyWith(_$PauseResumeResponseImpl value,
          $Res Function(_$PauseResumeResponseImpl) then) =
      __$$PauseResumeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PauseResumeResponseImplCopyWithImpl<$Res>
    extends _$PauseResumeResponseCopyWithImpl<$Res, _$PauseResumeResponseImpl>
    implements _$$PauseResumeResponseImplCopyWith<$Res> {
  __$$PauseResumeResponseImplCopyWithImpl(_$PauseResumeResponseImpl _value,
      $Res Function(_$PauseResumeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PauseResumeResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PauseResumeResponseImpl implements _PauseResumeResponse {
  const _$PauseResumeResponseImpl({this.status, this.data});

  factory _$PauseResumeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PauseResumeResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'PauseResumeResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseResumeResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseResumeResponseImplCopyWith<_$PauseResumeResponseImpl> get copyWith =>
      __$$PauseResumeResponseImplCopyWithImpl<_$PauseResumeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PauseResumeResponseImplToJson(
      this,
    );
  }
}

abstract class _PauseResumeResponse implements PauseResumeResponse {
  const factory _PauseResumeResponse({final bool? status, final Data? data}) =
      _$PauseResumeResponseImpl;

  factory _PauseResumeResponse.fromJson(Map<String, dynamic> json) =
      _$PauseResumeResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$PauseResumeResponseImplCopyWith<_$PauseResumeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  User? get user => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {User? user,
      String? id,
      int? v,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      String? id,
      int? v,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? id = freezed,
    Object? v = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.user, this.id, this.v, this.createdAt, this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final User? user;
  @override
  final String? id;
  @override
  final int? v;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(user: $user, id: $id, v: $v, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, id, v, createdAt, updatedAt);

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

abstract class _Data implements Data {
  const factory _Data(
      {final User? user,
      final String? id,
      final int? v,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  User? get user;
  @override
  String? get id;
  @override
  int? get v;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get programId => throw _privateConstructorUsedError;
  String? get batchId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  String? get planType => throw _privateConstructorUsedError;
  String? get planSubType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  dynamic get continutyStartDate => throw _privateConstructorUsedError;
  dynamic get continutyEndDate => throw _privateConstructorUsedError;
  int? get continutyCounter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? programId,
      String? batchId,
      String? userId,
      String? profileId,
      String? planType,
      String? planSubType,
      String? status,
      dynamic continutyStartDate,
      dynamic continutyEndDate,
      int? continutyCounter});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? batchId = freezed,
    Object? userId = freezed,
    Object? profileId = freezed,
    Object? planType = freezed,
    Object? planSubType = freezed,
    Object? status = freezed,
    Object? continutyStartDate = freezed,
    Object? continutyEndDate = freezed,
    Object? continutyCounter = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      planType: freezed == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String?,
      planSubType: freezed == planSubType
          ? _value.planSubType
          : planSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      continutyStartDate: freezed == continutyStartDate
          ? _value.continutyStartDate
          : continutyStartDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      continutyEndDate: freezed == continutyEndDate
          ? _value.continutyEndDate
          : continutyEndDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      continutyCounter: freezed == continutyCounter
          ? _value.continutyCounter
          : continutyCounter // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? programId,
      String? batchId,
      String? userId,
      String? profileId,
      String? planType,
      String? planSubType,
      String? status,
      dynamic continutyStartDate,
      dynamic continutyEndDate,
      int? continutyCounter});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? batchId = freezed,
    Object? userId = freezed,
    Object? profileId = freezed,
    Object? planType = freezed,
    Object? planSubType = freezed,
    Object? status = freezed,
    Object? continutyStartDate = freezed,
    Object? continutyEndDate = freezed,
    Object? continutyCounter = freezed,
  }) {
    return _then(_$UserImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as String?,
      batchId: freezed == batchId
          ? _value.batchId
          : batchId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      planType: freezed == planType
          ? _value.planType
          : planType // ignore: cast_nullable_to_non_nullable
              as String?,
      planSubType: freezed == planSubType
          ? _value.planSubType
          : planSubType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      continutyStartDate: freezed == continutyStartDate
          ? _value.continutyStartDate
          : continutyStartDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      continutyEndDate: freezed == continutyEndDate
          ? _value.continutyEndDate
          : continutyEndDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      continutyCounter: freezed == continutyCounter
          ? _value.continutyCounter
          : continutyCounter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.programId,
      this.batchId,
      this.userId,
      this.profileId,
      this.planType,
      this.planSubType,
      this.status,
      this.continutyStartDate,
      this.continutyEndDate,
      this.continutyCounter});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? programId;
  @override
  final String? batchId;
  @override
  final String? userId;
  @override
  final String? profileId;
  @override
  final String? planType;
  @override
  final String? planSubType;
  @override
  final String? status;
  @override
  final dynamic continutyStartDate;
  @override
  final dynamic continutyEndDate;
  @override
  final int? continutyCounter;

  @override
  String toString() {
    return 'User(programId: $programId, batchId: $batchId, userId: $userId, profileId: $profileId, planType: $planType, planSubType: $planSubType, status: $status, continutyStartDate: $continutyStartDate, continutyEndDate: $continutyEndDate, continutyCounter: $continutyCounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.planType, planType) ||
                other.planType == planType) &&
            (identical(other.planSubType, planSubType) ||
                other.planSubType == planSubType) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.continutyStartDate, continutyStartDate) &&
            const DeepCollectionEquality()
                .equals(other.continutyEndDate, continutyEndDate) &&
            (identical(other.continutyCounter, continutyCounter) ||
                other.continutyCounter == continutyCounter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      programId,
      batchId,
      userId,
      profileId,
      planType,
      planSubType,
      status,
      const DeepCollectionEquality().hash(continutyStartDate),
      const DeepCollectionEquality().hash(continutyEndDate),
      continutyCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? programId,
      final String? batchId,
      final String? userId,
      final String? profileId,
      final String? planType,
      final String? planSubType,
      final String? status,
      final dynamic continutyStartDate,
      final dynamic continutyEndDate,
      final int? continutyCounter}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get programId;
  @override
  String? get batchId;
  @override
  String? get userId;
  @override
  String? get profileId;
  @override
  String? get planType;
  @override
  String? get planSubType;
  @override
  String? get status;
  @override
  dynamic get continutyStartDate;
  @override
  dynamic get continutyEndDate;
  @override
  int? get continutyCounter;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
