// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expert_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpertResponse _$ExpertResponseFromJson(Map<String, dynamic> json) {
  return _ExpertResponse.fromJson(json);
}

/// @nodoc
mixin _$ExpertResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ExpertData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertResponseCopyWith<ExpertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertResponseCopyWith<$Res> {
  factory $ExpertResponseCopyWith(
          ExpertResponse value, $Res Function(ExpertResponse) then) =
      _$ExpertResponseCopyWithImpl<$Res, ExpertResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<ExpertData>? data,
      List<String>? category});
}

/// @nodoc
class _$ExpertResponseCopyWithImpl<$Res, $Val extends ExpertResponse>
    implements $ExpertResponseCopyWith<$Res> {
  _$ExpertResponseCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
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
              as List<ExpertData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertResponseImplCopyWith<$Res>
    implements $ExpertResponseCopyWith<$Res> {
  factory _$$ExpertResponseImplCopyWith(_$ExpertResponseImpl value,
          $Res Function(_$ExpertResponseImpl) then) =
      __$$ExpertResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<ExpertData>? data,
      List<String>? category});
}

/// @nodoc
class __$$ExpertResponseImplCopyWithImpl<$Res>
    extends _$ExpertResponseCopyWithImpl<$Res, _$ExpertResponseImpl>
    implements _$$ExpertResponseImplCopyWith<$Res> {
  __$$ExpertResponseImplCopyWithImpl(
      _$ExpertResponseImpl _value, $Res Function(_$ExpertResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ExpertResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExpertData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertResponseImpl implements _ExpertResponse {
  const _$ExpertResponseImpl(
      {this.status,
      this.message,
      final List<ExpertData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$ExpertResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<ExpertData>? _data;
  @override
  List<ExpertData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExpertResponse(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertResponseImplCopyWith<_$ExpertResponseImpl> get copyWith =>
      __$$ExpertResponseImplCopyWithImpl<_$ExpertResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertResponseImplToJson(
      this,
    );
  }
}

abstract class _ExpertResponse implements ExpertResponse {
  const factory _ExpertResponse(
      {final bool? status,
      final String? message,
      final List<ExpertData>? data,
      final List<String>? category}) = _$ExpertResponseImpl;

  factory _ExpertResponse.fromJson(Map<String, dynamic> json) =
      _$ExpertResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<ExpertData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$ExpertResponseImplCopyWith<_$ExpertResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpertData _$ExpertDataFromJson(Map<String, dynamic> json) {
  return _ExpertData.fromJson(json);
}

/// @nodoc
mixin _$ExpertData {
  @JsonKey(name: '_id')
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
  $ExpertDataCopyWith<ExpertData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertDataCopyWith<$Res> {
  factory $ExpertDataCopyWith(
          ExpertData value, $Res Function(ExpertData) then) =
      _$ExpertDataCopyWithImpl<$Res, ExpertData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
class _$ExpertDataCopyWithImpl<$Res, $Val extends ExpertData>
    implements $ExpertDataCopyWith<$Res> {
  _$ExpertDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ExpertDataImplCopyWith<$Res>
    implements $ExpertDataCopyWith<$Res> {
  factory _$$ExpertDataImplCopyWith(
          _$ExpertDataImpl value, $Res Function(_$ExpertDataImpl) then) =
      __$$ExpertDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
class __$$ExpertDataImplCopyWithImpl<$Res>
    extends _$ExpertDataCopyWithImpl<$Res, _$ExpertDataImpl>
    implements _$$ExpertDataImplCopyWith<$Res> {
  __$$ExpertDataImplCopyWithImpl(
      _$ExpertDataImpl _value, $Res Function(_$ExpertDataImpl) _then)
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
    return _then(_$ExpertDataImpl(
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
class _$ExpertDataImpl implements _ExpertData {
  const _$ExpertDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.expertProfile,
      this.expertCategory,
      this.expertName,
      this.expertDesignation,
      this.expertDescription,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$ExpertDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
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
    return 'ExpertData(id: $id, expertProfile: $expertProfile, expertCategory: $expertCategory, expertName: $expertName, expertDesignation: $expertDesignation, expertDescription: $expertDescription, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertDataImpl &&
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
  _$$ExpertDataImplCopyWith<_$ExpertDataImpl> get copyWith =>
      __$$ExpertDataImplCopyWithImpl<_$ExpertDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertDataImplToJson(
      this,
    );
  }
}

abstract class _ExpertData implements ExpertData {
  const factory _ExpertData(
      {@JsonKey(name: '_id') final String? id,
      final String? expertProfile,
      final String? expertCategory,
      final String? expertName,
      final String? expertDesignation,
      final String? expertDescription,
      final bool? status,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$ExpertDataImpl;

  factory _ExpertData.fromJson(Map<String, dynamic> json) =
      _$ExpertDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
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
  _$$ExpertDataImplCopyWith<_$ExpertDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
