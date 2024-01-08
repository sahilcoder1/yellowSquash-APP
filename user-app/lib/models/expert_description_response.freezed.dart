// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_description_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpertDescriptionResponse _$ExpertDescriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _ExpertDescriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$ExpertDescriptionResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ExpertDescriptionData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertDescriptionResponseCopyWith<ExpertDescriptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertDescriptionResponseCopyWith<$Res> {
  factory $ExpertDescriptionResponseCopyWith(ExpertDescriptionResponse value,
          $Res Function(ExpertDescriptionResponse) then) =
      _$ExpertDescriptionResponseCopyWithImpl<$Res, ExpertDescriptionResponse>;
  @useResult
  $Res call({bool? status, String? message, ExpertDescriptionData? data});

  $ExpertDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ExpertDescriptionResponseCopyWithImpl<$Res,
        $Val extends ExpertDescriptionResponse>
    implements $ExpertDescriptionResponseCopyWith<$Res> {
  _$ExpertDescriptionResponseCopyWithImpl(this._value, this._then);

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
              as ExpertDescriptionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpertDescriptionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ExpertDescriptionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpertDescriptionResponseImplCopyWith<$Res>
    implements $ExpertDescriptionResponseCopyWith<$Res> {
  factory _$$ExpertDescriptionResponseImplCopyWith(
          _$ExpertDescriptionResponseImpl value,
          $Res Function(_$ExpertDescriptionResponseImpl) then) =
      __$$ExpertDescriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, ExpertDescriptionData? data});

  @override
  $ExpertDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ExpertDescriptionResponseImplCopyWithImpl<$Res>
    extends _$ExpertDescriptionResponseCopyWithImpl<$Res,
        _$ExpertDescriptionResponseImpl>
    implements _$$ExpertDescriptionResponseImplCopyWith<$Res> {
  __$$ExpertDescriptionResponseImplCopyWithImpl(
      _$ExpertDescriptionResponseImpl _value,
      $Res Function(_$ExpertDescriptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ExpertDescriptionResponseImpl(
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
              as ExpertDescriptionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertDescriptionResponseImpl implements _ExpertDescriptionResponse {
  const _$ExpertDescriptionResponseImpl({this.status, this.message, this.data});

  factory _$ExpertDescriptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertDescriptionResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ExpertDescriptionData? data;

  @override
  String toString() {
    return 'ExpertDescriptionResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertDescriptionResponseImpl &&
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
  _$$ExpertDescriptionResponseImplCopyWith<_$ExpertDescriptionResponseImpl>
      get copyWith => __$$ExpertDescriptionResponseImplCopyWithImpl<
          _$ExpertDescriptionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertDescriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _ExpertDescriptionResponse implements ExpertDescriptionResponse {
  const factory _ExpertDescriptionResponse(
      {final bool? status,
      final String? message,
      final ExpertDescriptionData? data}) = _$ExpertDescriptionResponseImpl;

  factory _ExpertDescriptionResponse.fromJson(Map<String, dynamic> json) =
      _$ExpertDescriptionResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  ExpertDescriptionData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExpertDescriptionResponseImplCopyWith<_$ExpertDescriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExpertDescriptionData _$ExpertDescriptionDataFromJson(
    Map<String, dynamic> json) {
  return _ExpertDescriptionData.fromJson(json);
}

/// @nodoc
mixin _$ExpertDescriptionData {
  String? get id => throw _privateConstructorUsedError;
  String? get expertProfile => throw _privateConstructorUsedError;
  String? get expertCategory => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertDescription => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertDescriptionDataCopyWith<ExpertDescriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertDescriptionDataCopyWith<$Res> {
  factory $ExpertDescriptionDataCopyWith(ExpertDescriptionData value,
          $Res Function(ExpertDescriptionData) then) =
      _$ExpertDescriptionDataCopyWithImpl<$Res, ExpertDescriptionData>;
  @useResult
  $Res call(
      {String? id,
      String? expertProfile,
      String? expertCategory,
      String? expertName,
      String? expertDesignation,
      String? expertDescription,
      bool? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$ExpertDescriptionDataCopyWithImpl<$Res,
        $Val extends ExpertDescriptionData>
    implements $ExpertDescriptionDataCopyWith<$Res> {
  _$ExpertDescriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expertProfile = freezed,
    Object? expertCategory = freezed,
    Object? expertName = freezed,
    Object? expertDesignation = freezed,
    Object? expertDescription = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expertProfile: freezed == expertProfile
          ? _value.expertProfile
          : expertProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      expertCategory: freezed == expertCategory
          ? _value.expertCategory
          : expertCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertDescriptionDataImplCopyWith<$Res>
    implements $ExpertDescriptionDataCopyWith<$Res> {
  factory _$$ExpertDescriptionDataImplCopyWith(
          _$ExpertDescriptionDataImpl value,
          $Res Function(_$ExpertDescriptionDataImpl) then) =
      __$$ExpertDescriptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? expertProfile,
      String? expertCategory,
      String? expertName,
      String? expertDesignation,
      String? expertDescription,
      bool? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$ExpertDescriptionDataImplCopyWithImpl<$Res>
    extends _$ExpertDescriptionDataCopyWithImpl<$Res,
        _$ExpertDescriptionDataImpl>
    implements _$$ExpertDescriptionDataImplCopyWith<$Res> {
  __$$ExpertDescriptionDataImplCopyWithImpl(_$ExpertDescriptionDataImpl _value,
      $Res Function(_$ExpertDescriptionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expertProfile = freezed,
    Object? expertCategory = freezed,
    Object? expertName = freezed,
    Object? expertDesignation = freezed,
    Object? expertDescription = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ExpertDescriptionDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expertProfile: freezed == expertProfile
          ? _value.expertProfile
          : expertProfile // ignore: cast_nullable_to_non_nullable
              as String?,
      expertCategory: freezed == expertCategory
          ? _value.expertCategory
          : expertCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertDescriptionDataImpl implements _ExpertDescriptionData {
  const _$ExpertDescriptionDataImpl(
      {this.id,
      this.expertProfile,
      this.expertCategory,
      this.expertName,
      this.expertDesignation,
      this.expertDescription,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$ExpertDescriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertDescriptionDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? expertProfile;
  @override
  final String? expertCategory;
  @override
  final String? expertName;
  @override
  final String? expertDesignation;
  @override
  final String? expertDescription;
  @override
  final bool? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'ExpertDescriptionData(id: $id, expertProfile: $expertProfile, expertCategory: $expertCategory, expertName: $expertName, expertDesignation: $expertDesignation, expertDescription: $expertDescription, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertDescriptionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expertProfile, expertProfile) ||
                other.expertProfile == expertProfile) &&
            (identical(other.expertCategory, expertCategory) ||
                other.expertCategory == expertCategory) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.expertDescription, expertDescription) ||
                other.expertDescription == expertDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      expertProfile,
      expertCategory,
      expertName,
      expertDesignation,
      expertDescription,
      status,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertDescriptionDataImplCopyWith<_$ExpertDescriptionDataImpl>
      get copyWith => __$$ExpertDescriptionDataImplCopyWithImpl<
          _$ExpertDescriptionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertDescriptionDataImplToJson(
      this,
    );
  }
}

abstract class _ExpertDescriptionData implements ExpertDescriptionData {
  const factory _ExpertDescriptionData(
      {final String? id,
      final String? expertProfile,
      final String? expertCategory,
      final String? expertName,
      final String? expertDesignation,
      final String? expertDescription,
      final bool? status,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$ExpertDescriptionDataImpl;

  factory _ExpertDescriptionData.fromJson(Map<String, dynamic> json) =
      _$ExpertDescriptionDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get expertProfile;
  @override
  String? get expertCategory;
  @override
  String? get expertName;
  @override
  String? get expertDesignation;
  @override
  String? get expertDescription;
  @override
  bool? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ExpertDescriptionDataImplCopyWith<_$ExpertDescriptionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
