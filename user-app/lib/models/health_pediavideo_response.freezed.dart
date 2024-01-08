// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_pediavideo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthPediavideoResponse _$HealthPediavideoResponseFromJson(
    Map<String, dynamic> json) {
  return _HealthPediavideoResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthPediavideoResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<HealthPediaVideoData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediavideoResponseCopyWith<HealthPediavideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediavideoResponseCopyWith<$Res> {
  factory $HealthPediavideoResponseCopyWith(HealthPediavideoResponse value,
          $Res Function(HealthPediavideoResponse) then) =
      _$HealthPediavideoResponseCopyWithImpl<$Res, HealthPediavideoResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<HealthPediaVideoData>? data,
      List<String>? category});
}

/// @nodoc
class _$HealthPediavideoResponseCopyWithImpl<$Res,
        $Val extends HealthPediavideoResponse>
    implements $HealthPediavideoResponseCopyWith<$Res> {
  _$HealthPediavideoResponseCopyWithImpl(this._value, this._then);

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
              as List<HealthPediaVideoData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthPediavideoResponseImplCopyWith<$Res>
    implements $HealthPediavideoResponseCopyWith<$Res> {
  factory _$$HealthPediavideoResponseImplCopyWith(
          _$HealthPediavideoResponseImpl value,
          $Res Function(_$HealthPediavideoResponseImpl) then) =
      __$$HealthPediavideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<HealthPediaVideoData>? data,
      List<String>? category});
}

/// @nodoc
class __$$HealthPediavideoResponseImplCopyWithImpl<$Res>
    extends _$HealthPediavideoResponseCopyWithImpl<$Res,
        _$HealthPediavideoResponseImpl>
    implements _$$HealthPediavideoResponseImplCopyWith<$Res> {
  __$$HealthPediavideoResponseImplCopyWithImpl(
      _$HealthPediavideoResponseImpl _value,
      $Res Function(_$HealthPediavideoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$HealthPediavideoResponseImpl(
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
              as List<HealthPediaVideoData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthPediavideoResponseImpl implements _HealthPediavideoResponse {
  const _$HealthPediavideoResponseImpl(
      {this.status,
      this.message,
      final List<HealthPediaVideoData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$HealthPediavideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthPediavideoResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<HealthPediaVideoData>? _data;
  @override
  List<HealthPediaVideoData>? get data {
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
    return 'HealthPediavideoResponse(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediavideoResponseImpl &&
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
  _$$HealthPediavideoResponseImplCopyWith<_$HealthPediavideoResponseImpl>
      get copyWith => __$$HealthPediavideoResponseImplCopyWithImpl<
          _$HealthPediavideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediavideoResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthPediavideoResponse implements HealthPediavideoResponse {
  const factory _HealthPediavideoResponse(
      {final bool? status,
      final String? message,
      final List<HealthPediaVideoData>? data,
      final List<String>? category}) = _$HealthPediavideoResponseImpl;

  factory _HealthPediavideoResponse.fromJson(Map<String, dynamic> json) =
      _$HealthPediavideoResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<HealthPediaVideoData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$HealthPediavideoResponseImplCopyWith<_$HealthPediavideoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HealthPediaVideoData _$HealthPediaVideoDataFromJson(Map<String, dynamic> json) {
  return _HealthPediaVideoData.fromJson(json);
}

/// @nodoc
mixin _$HealthPediaVideoData {
  String? get id => throw _privateConstructorUsedError;
  String? get blogVideo => throw _privateConstructorUsedError;
  String? get blogCategory => throw _privateConstructorUsedError;
  String? get blogTitle => throw _privateConstructorUsedError;
  String? get blogthumbnail => throw _privateConstructorUsedError;
  String? get blogBy => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediaVideoDataCopyWith<HealthPediaVideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaVideoDataCopyWith<$Res> {
  factory $HealthPediaVideoDataCopyWith(HealthPediaVideoData value,
          $Res Function(HealthPediaVideoData) then) =
      _$HealthPediaVideoDataCopyWithImpl<$Res, HealthPediaVideoData>;
  @useResult
  $Res call(
      {String? id,
      String? blogVideo,
      String? blogCategory,
      String? blogTitle,
      String? blogthumbnail,
      String? blogBy,
      bool? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$HealthPediaVideoDataCopyWithImpl<$Res,
        $Val extends HealthPediaVideoData>
    implements $HealthPediaVideoDataCopyWith<$Res> {
  _$HealthPediaVideoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? blogVideo = freezed,
    Object? blogCategory = freezed,
    Object? blogTitle = freezed,
    Object? blogthumbnail = freezed,
    Object? blogBy = freezed,
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
      blogVideo: freezed == blogVideo
          ? _value.blogVideo
          : blogVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogthumbnail: freezed == blogthumbnail
          ? _value.blogthumbnail
          : blogthumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      blogBy: freezed == blogBy
          ? _value.blogBy
          : blogBy // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HealthPediaVideoDataImplCopyWith<$Res>
    implements $HealthPediaVideoDataCopyWith<$Res> {
  factory _$$HealthPediaVideoDataImplCopyWith(_$HealthPediaVideoDataImpl value,
          $Res Function(_$HealthPediaVideoDataImpl) then) =
      __$$HealthPediaVideoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? blogVideo,
      String? blogCategory,
      String? blogTitle,
      String? blogthumbnail,
      String? blogBy,
      bool? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$HealthPediaVideoDataImplCopyWithImpl<$Res>
    extends _$HealthPediaVideoDataCopyWithImpl<$Res, _$HealthPediaVideoDataImpl>
    implements _$$HealthPediaVideoDataImplCopyWith<$Res> {
  __$$HealthPediaVideoDataImplCopyWithImpl(_$HealthPediaVideoDataImpl _value,
      $Res Function(_$HealthPediaVideoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? blogVideo = freezed,
    Object? blogCategory = freezed,
    Object? blogTitle = freezed,
    Object? blogthumbnail = freezed,
    Object? blogBy = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$HealthPediaVideoDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      blogVideo: freezed == blogVideo
          ? _value.blogVideo
          : blogVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogthumbnail: freezed == blogthumbnail
          ? _value.blogthumbnail
          : blogthumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      blogBy: freezed == blogBy
          ? _value.blogBy
          : blogBy // ignore: cast_nullable_to_non_nullable
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
class _$HealthPediaVideoDataImpl implements _HealthPediaVideoData {
  const _$HealthPediaVideoDataImpl(
      {this.id,
      this.blogVideo,
      this.blogCategory,
      this.blogTitle,
      this.blogthumbnail,
      this.blogBy,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$HealthPediaVideoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthPediaVideoDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? blogVideo;
  @override
  final String? blogCategory;
  @override
  final String? blogTitle;
  @override
  final String? blogthumbnail;
  @override
  final String? blogBy;
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
    return 'HealthPediaVideoData(id: $id, blogVideo: $blogVideo, blogCategory: $blogCategory, blogTitle: $blogTitle, blogthumbnail: $blogthumbnail, blogBy: $blogBy, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediaVideoDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.blogVideo, blogVideo) ||
                other.blogVideo == blogVideo) &&
            (identical(other.blogCategory, blogCategory) ||
                other.blogCategory == blogCategory) &&
            (identical(other.blogTitle, blogTitle) ||
                other.blogTitle == blogTitle) &&
            (identical(other.blogthumbnail, blogthumbnail) ||
                other.blogthumbnail == blogthumbnail) &&
            (identical(other.blogBy, blogBy) || other.blogBy == blogBy) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, blogVideo, blogCategory,
      blogTitle, blogthumbnail, blogBy, status, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthPediaVideoDataImplCopyWith<_$HealthPediaVideoDataImpl>
      get copyWith =>
          __$$HealthPediaVideoDataImplCopyWithImpl<_$HealthPediaVideoDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediaVideoDataImplToJson(
      this,
    );
  }
}

abstract class _HealthPediaVideoData implements HealthPediaVideoData {
  const factory _HealthPediaVideoData(
      {final String? id,
      final String? blogVideo,
      final String? blogCategory,
      final String? blogTitle,
      final String? blogthumbnail,
      final String? blogBy,
      final bool? status,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$HealthPediaVideoDataImpl;

  factory _HealthPediaVideoData.fromJson(Map<String, dynamic> json) =
      _$HealthPediaVideoDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get blogVideo;
  @override
  String? get blogCategory;
  @override
  String? get blogTitle;
  @override
  String? get blogthumbnail;
  @override
  String? get blogBy;
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
  _$$HealthPediaVideoDataImplCopyWith<_$HealthPediaVideoDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
