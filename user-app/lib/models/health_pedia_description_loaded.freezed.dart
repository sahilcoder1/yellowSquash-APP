// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_pedia_description_loaded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HealthPediaDescriptionLoaded _$HealthPediaDescriptionLoadedFromJson(
    Map<String, dynamic> json) {
  return _HealthPediaDescriptionLoaded.fromJson(json);
}

/// @nodoc
mixin _$HealthPediaDescriptionLoaded {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<HealthDescriptionPediaData>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediaDescriptionLoadedCopyWith<HealthPediaDescriptionLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaDescriptionLoadedCopyWith<$Res> {
  factory $HealthPediaDescriptionLoadedCopyWith(
          HealthPediaDescriptionLoaded value,
          $Res Function(HealthPediaDescriptionLoaded) then) =
      _$HealthPediaDescriptionLoadedCopyWithImpl<$Res,
          HealthPediaDescriptionLoaded>;
  @useResult
  $Res call(
      {String? message, bool? status, List<HealthDescriptionPediaData>? data});
}

/// @nodoc
class _$HealthPediaDescriptionLoadedCopyWithImpl<$Res,
        $Val extends HealthPediaDescriptionLoaded>
    implements $HealthPediaDescriptionLoadedCopyWith<$Res> {
  _$HealthPediaDescriptionLoadedCopyWithImpl(this._value, this._then);

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
              as List<HealthDescriptionPediaData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthPediaDescriptionLoadedImplCopyWith<$Res>
    implements $HealthPediaDescriptionLoadedCopyWith<$Res> {
  factory _$$HealthPediaDescriptionLoadedImplCopyWith(
          _$HealthPediaDescriptionLoadedImpl value,
          $Res Function(_$HealthPediaDescriptionLoadedImpl) then) =
      __$$HealthPediaDescriptionLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message, bool? status, List<HealthDescriptionPediaData>? data});
}

/// @nodoc
class __$$HealthPediaDescriptionLoadedImplCopyWithImpl<$Res>
    extends _$HealthPediaDescriptionLoadedCopyWithImpl<$Res,
        _$HealthPediaDescriptionLoadedImpl>
    implements _$$HealthPediaDescriptionLoadedImplCopyWith<$Res> {
  __$$HealthPediaDescriptionLoadedImplCopyWithImpl(
      _$HealthPediaDescriptionLoadedImpl _value,
      $Res Function(_$HealthPediaDescriptionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HealthPediaDescriptionLoadedImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HealthDescriptionPediaData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthPediaDescriptionLoadedImpl
    implements _HealthPediaDescriptionLoaded {
  const _$HealthPediaDescriptionLoadedImpl(
      {this.message, this.status, final List<HealthDescriptionPediaData>? data})
      : _data = data;

  factory _$HealthPediaDescriptionLoadedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HealthPediaDescriptionLoadedImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  final List<HealthDescriptionPediaData>? _data;
  @override
  List<HealthDescriptionPediaData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HealthPediaDescriptionLoaded(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediaDescriptionLoadedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthPediaDescriptionLoadedImplCopyWith<
          _$HealthPediaDescriptionLoadedImpl>
      get copyWith => __$$HealthPediaDescriptionLoadedImplCopyWithImpl<
          _$HealthPediaDescriptionLoadedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediaDescriptionLoadedImplToJson(
      this,
    );
  }
}

abstract class _HealthPediaDescriptionLoaded
    implements HealthPediaDescriptionLoaded {
  const factory _HealthPediaDescriptionLoaded(
          {final String? message,
          final bool? status,
          final List<HealthDescriptionPediaData>? data}) =
      _$HealthPediaDescriptionLoadedImpl;

  factory _HealthPediaDescriptionLoaded.fromJson(Map<String, dynamic> json) =
      _$HealthPediaDescriptionLoadedImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<HealthDescriptionPediaData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HealthPediaDescriptionLoadedImplCopyWith<
          _$HealthPediaDescriptionLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HealthDescriptionPediaData _$HealthDescriptionPediaDataFromJson(
    Map<String, dynamic> json) {
  return _HealthDescriptionPediaData.fromJson(json);
}

/// @nodoc
mixin _$HealthDescriptionPediaData {
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
  bool? get status => throw _privateConstructorUsedError;
  List<String>? get like => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  String? get metatag => throw _privateConstructorUsedError;
  String? get metadiscription => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  bool? get isDraft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthDescriptionPediaDataCopyWith<HealthDescriptionPediaData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthDescriptionPediaDataCopyWith<$Res> {
  factory $HealthDescriptionPediaDataCopyWith(HealthDescriptionPediaData value,
          $Res Function(HealthDescriptionPediaData) then) =
      _$HealthDescriptionPediaDataCopyWithImpl<$Res,
          HealthDescriptionPediaData>;
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
      bool? status,
      List<String>? like,
      int? views,
      String? metatag,
      String? metadiscription,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      bool? isDeleted,
      bool? isDraft});
}

/// @nodoc
class _$HealthDescriptionPediaDataCopyWithImpl<$Res,
        $Val extends HealthDescriptionPediaData>
    implements $HealthDescriptionPediaDataCopyWith<$Res> {
  _$HealthDescriptionPediaDataCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? like = freezed,
    Object? views = freezed,
    Object? metatag = freezed,
    Object? metadiscription = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? isDraft = freezed,
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
      metatag: freezed == metatag
          ? _value.metatag
          : metatag // ignore: cast_nullable_to_non_nullable
              as String?,
      metadiscription: freezed == metadiscription
          ? _value.metadiscription
          : metadiscription // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDraft: freezed == isDraft
          ? _value.isDraft
          : isDraft // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthDescriptionPediaDataImplCopyWith<$Res>
    implements $HealthDescriptionPediaDataCopyWith<$Res> {
  factory _$$HealthDescriptionPediaDataImplCopyWith(
          _$HealthDescriptionPediaDataImpl value,
          $Res Function(_$HealthDescriptionPediaDataImpl) then) =
      __$$HealthDescriptionPediaDataImplCopyWithImpl<$Res>;
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
      bool? status,
      List<String>? like,
      int? views,
      String? metatag,
      String? metadiscription,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      bool? isDeleted,
      bool? isDraft});
}

/// @nodoc
class __$$HealthDescriptionPediaDataImplCopyWithImpl<$Res>
    extends _$HealthDescriptionPediaDataCopyWithImpl<$Res,
        _$HealthDescriptionPediaDataImpl>
    implements _$$HealthDescriptionPediaDataImplCopyWith<$Res> {
  __$$HealthDescriptionPediaDataImplCopyWithImpl(
      _$HealthDescriptionPediaDataImpl _value,
      $Res Function(_$HealthDescriptionPediaDataImpl) _then)
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
    Object? status = freezed,
    Object? like = freezed,
    Object? views = freezed,
    Object? metatag = freezed,
    Object? metadiscription = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? isDraft = freezed,
  }) {
    return _then(_$HealthDescriptionPediaDataImpl(
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
      metatag: freezed == metatag
          ? _value.metatag
          : metatag // ignore: cast_nullable_to_non_nullable
              as String?,
      metadiscription: freezed == metadiscription
          ? _value.metadiscription
          : metadiscription // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDraft: freezed == isDraft
          ? _value.isDraft
          : isDraft // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthDescriptionPediaDataImpl implements _HealthDescriptionPediaData {
  const _$HealthDescriptionPediaDataImpl(
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
      this.status,
      final List<String>? like,
      this.views,
      this.metatag,
      this.metadiscription,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.isDeleted,
      this.isDraft})
      : _like = like;

  factory _$HealthDescriptionPediaDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HealthDescriptionPediaDataImplFromJson(json);

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
  final String? metatag;
  @override
  final String? metadiscription;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final bool? isDeleted;
  @override
  final bool? isDraft;

  @override
  String toString() {
    return 'HealthDescriptionPediaData(id: $id, title: $title, releaseDate: $releaseDate, category: $category, summary: $summary, bannerImageUrl: $bannerImageUrl, articleBody: $articleBody, expertName: $expertName, expertImageUrl: $expertImageUrl, slug: $slug, status: $status, like: $like, views: $views, metatag: $metatag, metadiscription: $metadiscription, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isDeleted: $isDeleted, isDraft: $isDraft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthDescriptionPediaDataImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._like, _like) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.metatag, metatag) || other.metatag == metatag) &&
            (identical(other.metadiscription, metadiscription) ||
                other.metadiscription == metadiscription) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isDraft, isDraft) || other.isDraft == isDraft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        status,
        const DeepCollectionEquality().hash(_like),
        views,
        metatag,
        metadiscription,
        createdAt,
        updatedAt,
        v,
        isDeleted,
        isDraft
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthDescriptionPediaDataImplCopyWith<_$HealthDescriptionPediaDataImpl>
      get copyWith => __$$HealthDescriptionPediaDataImplCopyWithImpl<
          _$HealthDescriptionPediaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthDescriptionPediaDataImplToJson(
      this,
    );
  }
}

abstract class _HealthDescriptionPediaData
    implements HealthDescriptionPediaData {
  const factory _HealthDescriptionPediaData(
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
      final bool? status,
      final List<String>? like,
      final int? views,
      final String? metatag,
      final String? metadiscription,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final bool? isDeleted,
      final bool? isDraft}) = _$HealthDescriptionPediaDataImpl;

  factory _HealthDescriptionPediaData.fromJson(Map<String, dynamic> json) =
      _$HealthDescriptionPediaDataImpl.fromJson;

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
  bool? get status;
  @override
  List<String>? get like;
  @override
  int? get views;
  @override
  String? get metatag;
  @override
  String? get metadiscription;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  bool? get isDeleted;
  @override
  bool? get isDraft;
  @override
  @JsonKey(ignore: true)
  _$$HealthDescriptionPediaDataImplCopyWith<_$HealthDescriptionPediaDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
