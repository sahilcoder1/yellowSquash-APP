// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_pedia_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthPediaResponse _$HealthPediaResponseFromJson(Map<String, dynamic> json) {
  return _HealthPediaResponse.fromJson(json);
}

/// @nodoc
mixin _$HealthPediaResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<HealthPediaData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediaResponseCopyWith<HealthPediaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaResponseCopyWith<$Res> {
  factory $HealthPediaResponseCopyWith(
          HealthPediaResponse value, $Res Function(HealthPediaResponse) then) =
      _$HealthPediaResponseCopyWithImpl<$Res, HealthPediaResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<HealthPediaData>? data,
      List<String>? category});
}

/// @nodoc
class _$HealthPediaResponseCopyWithImpl<$Res, $Val extends HealthPediaResponse>
    implements $HealthPediaResponseCopyWith<$Res> {
  _$HealthPediaResponseCopyWithImpl(this._value, this._then);

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
              as List<HealthPediaData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthPediaResponseImplCopyWith<$Res>
    implements $HealthPediaResponseCopyWith<$Res> {
  factory _$$HealthPediaResponseImplCopyWith(_$HealthPediaResponseImpl value,
          $Res Function(_$HealthPediaResponseImpl) then) =
      __$$HealthPediaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<HealthPediaData>? data,
      List<String>? category});
}

/// @nodoc
class __$$HealthPediaResponseImplCopyWithImpl<$Res>
    extends _$HealthPediaResponseCopyWithImpl<$Res, _$HealthPediaResponseImpl>
    implements _$$HealthPediaResponseImplCopyWith<$Res> {
  __$$HealthPediaResponseImplCopyWithImpl(_$HealthPediaResponseImpl _value,
      $Res Function(_$HealthPediaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$HealthPediaResponseImpl(
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
              as List<HealthPediaData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthPediaResponseImpl implements _HealthPediaResponse {
  const _$HealthPediaResponseImpl(
      {this.status,
      this.message,
      final List<HealthPediaData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$HealthPediaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthPediaResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<HealthPediaData>? _data;
  @override
  List<HealthPediaData>? get data {
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
    return 'HealthPediaResponse(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediaResponseImpl &&
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
  _$$HealthPediaResponseImplCopyWith<_$HealthPediaResponseImpl> get copyWith =>
      __$$HealthPediaResponseImplCopyWithImpl<_$HealthPediaResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediaResponseImplToJson(
      this,
    );
  }
}

abstract class _HealthPediaResponse implements HealthPediaResponse {
  const factory _HealthPediaResponse(
      {final bool? status,
      final String? message,
      final List<HealthPediaData>? data,
      final List<String>? category}) = _$HealthPediaResponseImpl;

  factory _HealthPediaResponse.fromJson(Map<String, dynamic> json) =
      _$HealthPediaResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<HealthPediaData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$HealthPediaResponseImplCopyWith<_$HealthPediaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthPediaData _$HealthPediaDataFromJson(Map<String, dynamic> json) {
  return _HealthPediaData.fromJson(json);
}

/// @nodoc
mixin _$HealthPediaData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get bannerImageUrl => throw _privateConstructorUsedError;
  String? get articleBody => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertImageUrl => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  bool? get isDraft => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<String>? get like => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediaDataCopyWith<HealthPediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaDataCopyWith<$Res> {
  factory $HealthPediaDataCopyWith(
          HealthPediaData value, $Res Function(HealthPediaData) then) =
      _$HealthPediaDataCopyWithImpl<$Res, HealthPediaData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      DateTime? releaseDate,
      String? category,
      String? summary,
      String? bannerImageUrl,
      String? articleBody,
      String? expertName,
      String? expertImageUrl,
      String? slug,
      bool? isDraft,
      bool? status,
      List<String>? like,
      int? views,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$HealthPediaDataCopyWithImpl<$Res, $Val extends HealthPediaData>
    implements $HealthPediaDataCopyWith<$Res> {
  _$HealthPediaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? category = freezed,
    Object? summary = freezed,
    Object? bannerImageUrl = freezed,
    Object? articleBody = freezed,
    Object? expertName = freezed,
    Object? expertImageUrl = freezed,
    Object? slug = freezed,
    Object? isDraft = freezed,
    Object? status = freezed,
    Object? like = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      articleBody: freezed == articleBody
          ? _value.articleBody
          : articleBody // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImageUrl: freezed == expertImageUrl
          ? _value.expertImageUrl
          : expertImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isDraft: freezed == isDraft
          ? _value.isDraft
          : isDraft // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$HealthPediaDataImplCopyWith<$Res>
    implements $HealthPediaDataCopyWith<$Res> {
  factory _$$HealthPediaDataImplCopyWith(_$HealthPediaDataImpl value,
          $Res Function(_$HealthPediaDataImpl) then) =
      __$$HealthPediaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      DateTime? releaseDate,
      String? category,
      String? summary,
      String? bannerImageUrl,
      String? articleBody,
      String? expertName,
      String? expertImageUrl,
      String? slug,
      bool? isDraft,
      bool? status,
      List<String>? like,
      int? views,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$HealthPediaDataImplCopyWithImpl<$Res>
    extends _$HealthPediaDataCopyWithImpl<$Res, _$HealthPediaDataImpl>
    implements _$$HealthPediaDataImplCopyWith<$Res> {
  __$$HealthPediaDataImplCopyWithImpl(
      _$HealthPediaDataImpl _value, $Res Function(_$HealthPediaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? category = freezed,
    Object? summary = freezed,
    Object? bannerImageUrl = freezed,
    Object? articleBody = freezed,
    Object? expertName = freezed,
    Object? expertImageUrl = freezed,
    Object? slug = freezed,
    Object? isDraft = freezed,
    Object? status = freezed,
    Object? like = freezed,
    Object? views = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$HealthPediaDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      articleBody: freezed == articleBody
          ? _value.articleBody
          : articleBody // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImageUrl: freezed == expertImageUrl
          ? _value.expertImageUrl
          : expertImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isDraft: freezed == isDraft
          ? _value.isDraft
          : isDraft // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      like: freezed == like
          ? _value._like
          : like // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$HealthPediaDataImpl implements _HealthPediaData {
  const _$HealthPediaDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.releaseDate,
      this.category,
      this.summary,
      this.bannerImageUrl,
      this.articleBody,
      this.expertName,
      this.expertImageUrl,
      this.slug,
      this.isDraft,
      this.status,
      final List<String>? like,
      this.views,
      this.createdAt,
      this.updatedAt,
      this.v})
      : _like = like;

  factory _$HealthPediaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthPediaDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final DateTime? releaseDate;
  @override
  final String? category;
  @override
  final String? summary;
  @override
  final String? bannerImageUrl;
  @override
  final String? articleBody;
  @override
  final String? expertName;
  @override
  final String? expertImageUrl;
  @override
  final String? slug;
  @override
  final bool? isDraft;
  @override
  final bool? status;
  final List<String>? _like;
  @override
  List<String>? get like {
    final value = _like;
    if (value == null) return null;
    if (_like is EqualUnmodifiableListView) return _like;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? views;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'HealthPediaData(id: $id, title: $title, releaseDate: $releaseDate, category: $category, summary: $summary, bannerImageUrl: $bannerImageUrl, articleBody: $articleBody, expertName: $expertName, expertImageUrl: $expertImageUrl, slug: $slug, isDraft: $isDraft, status: $status, like: $like, views: $views, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediaDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                other.bannerImageUrl == bannerImageUrl) &&
            (identical(other.articleBody, articleBody) ||
                other.articleBody == articleBody) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.expertImageUrl, expertImageUrl) ||
                other.expertImageUrl == expertImageUrl) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.isDraft, isDraft) || other.isDraft == isDraft) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._like, _like) &&
            (identical(other.views, views) || other.views == views) &&
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
      title,
      releaseDate,
      category,
      summary,
      bannerImageUrl,
      articleBody,
      expertName,
      expertImageUrl,
      slug,
      isDraft,
      status,
      const DeepCollectionEquality().hash(_like),
      views,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthPediaDataImplCopyWith<_$HealthPediaDataImpl> get copyWith =>
      __$$HealthPediaDataImplCopyWithImpl<_$HealthPediaDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediaDataImplToJson(
      this,
    );
  }
}

abstract class _HealthPediaData implements HealthPediaData {
  const factory _HealthPediaData(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final DateTime? releaseDate,
      final String? category,
      final String? summary,
      final String? bannerImageUrl,
      final String? articleBody,
      final String? expertName,
      final String? expertImageUrl,
      final String? slug,
      final bool? isDraft,
      final bool? status,
      final List<String>? like,
      final int? views,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$HealthPediaDataImpl;

  factory _HealthPediaData.fromJson(Map<String, dynamic> json) =
      _$HealthPediaDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  DateTime? get releaseDate;
  @override
  String? get category;
  @override
  String? get summary;
  @override
  String? get bannerImageUrl;
  @override
  String? get articleBody;
  @override
  String? get expertName;
  @override
  String? get expertImageUrl;
  @override
  String? get slug;
  @override
  bool? get isDraft;
  @override
  bool? get status;
  @override
  List<String>? get like;
  @override
  int? get views;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$HealthPediaDataImplCopyWith<_$HealthPediaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
