// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramsResponse _$ProgramsResponseFromJson(Map<String, dynamic> json) {
  return _ProgramsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProgramsResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ProgramData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramsResponseCopyWith<ProgramsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsResponseCopyWith<$Res> {
  factory $ProgramsResponseCopyWith(
          ProgramsResponse value, $Res Function(ProgramsResponse) then) =
      _$ProgramsResponseCopyWithImpl<$Res, ProgramsResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<ProgramData>? data,
      List<String>? category});
}

/// @nodoc
class _$ProgramsResponseCopyWithImpl<$Res, $Val extends ProgramsResponse>
    implements $ProgramsResponseCopyWith<$Res> {
  _$ProgramsResponseCopyWithImpl(this._value, this._then);

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
              as List<ProgramData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramsResponseImplCopyWith<$Res>
    implements $ProgramsResponseCopyWith<$Res> {
  factory _$$ProgramsResponseImplCopyWith(_$ProgramsResponseImpl value,
          $Res Function(_$ProgramsResponseImpl) then) =
      __$$ProgramsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<ProgramData>? data,
      List<String>? category});
}

/// @nodoc
class __$$ProgramsResponseImplCopyWithImpl<$Res>
    extends _$ProgramsResponseCopyWithImpl<$Res, _$ProgramsResponseImpl>
    implements _$$ProgramsResponseImplCopyWith<$Res> {
  __$$ProgramsResponseImplCopyWithImpl(_$ProgramsResponseImpl _value,
      $Res Function(_$ProgramsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ProgramsResponseImpl(
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
              as List<ProgramData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramsResponseImpl implements _ProgramsResponse {
  const _$ProgramsResponseImpl(
      {this.status,
      this.message,
      final List<ProgramData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$ProgramsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramsResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<ProgramData>? _data;
  @override
  List<ProgramData>? get data {
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
    return 'ProgramsResponse(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramsResponseImpl &&
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
  _$$ProgramsResponseImplCopyWith<_$ProgramsResponseImpl> get copyWith =>
      __$$ProgramsResponseImplCopyWithImpl<_$ProgramsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramsResponseImplToJson(
      this,
    );
  }
}

abstract class _ProgramsResponse implements ProgramsResponse {
  const factory _ProgramsResponse(
      {final bool? status,
      final String? message,
      final List<ProgramData>? data,
      final List<String>? category}) = _$ProgramsResponseImpl;

  factory _ProgramsResponse.fromJson(Map<String, dynamic> json) =
      _$ProgramsResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<ProgramData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$ProgramsResponseImplCopyWith<_$ProgramsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramData _$ProgramDataFromJson(Map<String, dynamic> json) {
  return _ProgramData.fromJson(json);
}

/// @nodoc
mixin _$ProgramData {
// Overview? overview,
// AboutTheExpert? aboutTheExpert,
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get programintovideourl => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get imageId => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError; // Plans? plans,
  String? get programCategory => throw _privateConstructorUsedError;
  int? get enrolledUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get howItWorks =>
      throw _privateConstructorUsedError; // List<Structure>? structure,
// List<Faq>? faq,
  String? get whatsappLink => throw _privateConstructorUsedError;
  String? get intakeFormLink => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDataCopyWith<ProgramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDataCopyWith<$Res> {
  factory $ProgramDataCopyWith(
          ProgramData value, $Res Function(ProgramData) then) =
      _$ProgramDataCopyWithImpl<$Res, ProgramData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      double? rating,
      String? programintovideourl,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? howItWorks,
      String? whatsappLink,
      String? intakeFormLink,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class _$ProgramDataCopyWithImpl<$Res, $Val extends ProgramData>
    implements $ProgramDataCopyWith<$Res> {
  _$ProgramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? rating = freezed,
    Object? programintovideourl = freezed,
    Object? videoId = freezed,
    Object? imageUrl = freezed,
    Object? imageId = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? author = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? howItWorks = freezed,
    Object? whatsappLink = freezed,
    Object? intakeFormLink = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      programintovideourl: freezed == programintovideourl
          ? _value.programintovideourl
          : programintovideourl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      expert: freezed == expert
          ? _value.expert
          : expert // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolledUser: freezed == enrolledUser
          ? _value.enrolledUser
          : enrolledUser // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      intakeFormLink: freezed == intakeFormLink
          ? _value.intakeFormLink
          : intakeFormLink // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramDataImplCopyWith<$Res>
    implements $ProgramDataCopyWith<$Res> {
  factory _$$ProgramDataImplCopyWith(
          _$ProgramDataImpl value, $Res Function(_$ProgramDataImpl) then) =
      __$$ProgramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      double? rating,
      String? programintovideourl,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? howItWorks,
      String? whatsappLink,
      String? intakeFormLink,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});
}

/// @nodoc
class __$$ProgramDataImplCopyWithImpl<$Res>
    extends _$ProgramDataCopyWithImpl<$Res, _$ProgramDataImpl>
    implements _$$ProgramDataImplCopyWith<$Res> {
  __$$ProgramDataImplCopyWithImpl(
      _$ProgramDataImpl _value, $Res Function(_$ProgramDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? rating = freezed,
    Object? programintovideourl = freezed,
    Object? videoId = freezed,
    Object? imageUrl = freezed,
    Object? imageId = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? author = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? howItWorks = freezed,
    Object? whatsappLink = freezed,
    Object? intakeFormLink = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ProgramDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      programintovideourl: freezed == programintovideourl
          ? _value.programintovideourl
          : programintovideourl // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int?,
      expert: freezed == expert
          ? _value.expert
          : expert // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      enrolledUser: freezed == enrolledUser
          ? _value.enrolledUser
          : enrolledUser // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      intakeFormLink: freezed == intakeFormLink
          ? _value.intakeFormLink
          : intakeFormLink // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDataImpl extends _ProgramData {
  const _$ProgramDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.slug,
      this.rating,
      this.programintovideourl,
      this.videoId,
      this.imageUrl,
      this.imageId,
      this.expert,
      this.expertDesignation,
      this.expertImage,
      this.author,
      this.programCategory,
      this.enrolledUser,
      this.status,
      this.howItWorks,
      this.whatsappLink,
      this.intakeFormLink,
      this.createdAt,
      this.updatedAt,
      this.v})
      : super._();

  factory _$ProgramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDataImplFromJson(json);

// Overview? overview,
// AboutTheExpert? aboutTheExpert,
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final double? rating;
  @override
  final String? programintovideourl;
  @override
  final int? videoId;
  @override
  final String? imageUrl;
  @override
  final int? imageId;
  @override
  final String? expert;
  @override
  final String? expertDesignation;
  @override
  final String? expertImage;
  @override
  final String? author;
// Plans? plans,
  @override
  final String? programCategory;
  @override
  final int? enrolledUser;
  @override
  final String? status;
  @override
  final String? howItWorks;
// List<Structure>? structure,
// List<Faq>? faq,
  @override
  final String? whatsappLink;
  @override
  final String? intakeFormLink;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'ProgramData(id: $id, title: $title, slug: $slug, rating: $rating, programintovideourl: $programintovideourl, videoId: $videoId, imageUrl: $imageUrl, imageId: $imageId, expert: $expert, expertDesignation: $expertDesignation, expertImage: $expertImage, author: $author, programCategory: $programCategory, enrolledUser: $enrolledUser, status: $status, howItWorks: $howItWorks, whatsappLink: $whatsappLink, intakeFormLink: $intakeFormLink, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.programintovideourl, programintovideourl) ||
                other.programintovideourl == programintovideourl) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.expert, expert) || other.expert == expert) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.expertImage, expertImage) ||
                other.expertImage == expertImage) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.programCategory, programCategory) ||
                other.programCategory == programCategory) &&
            (identical(other.enrolledUser, enrolledUser) ||
                other.enrolledUser == enrolledUser) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.howItWorks, howItWorks) ||
                other.howItWorks == howItWorks) &&
            (identical(other.whatsappLink, whatsappLink) ||
                other.whatsappLink == whatsappLink) &&
            (identical(other.intakeFormLink, intakeFormLink) ||
                other.intakeFormLink == intakeFormLink) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        slug,
        rating,
        programintovideourl,
        videoId,
        imageUrl,
        imageId,
        expert,
        expertDesignation,
        expertImage,
        author,
        programCategory,
        enrolledUser,
        status,
        howItWorks,
        whatsappLink,
        intakeFormLink,
        createdAt,
        updatedAt,
        v
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      __$$ProgramDataImplCopyWithImpl<_$ProgramDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDataImplToJson(
      this,
    );
  }
}

abstract class _ProgramData extends ProgramData {
  const factory _ProgramData(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? slug,
      final double? rating,
      final String? programintovideourl,
      final int? videoId,
      final String? imageUrl,
      final int? imageId,
      final String? expert,
      final String? expertDesignation,
      final String? expertImage,
      final String? author,
      final String? programCategory,
      final int? enrolledUser,
      final String? status,
      final String? howItWorks,
      final String? whatsappLink,
      final String? intakeFormLink,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$ProgramDataImpl;
  const _ProgramData._() : super._();

  factory _ProgramData.fromJson(Map<String, dynamic> json) =
      _$ProgramDataImpl.fromJson;

  @override // Overview? overview,
// AboutTheExpert? aboutTheExpert,
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  double? get rating;
  @override
  String? get programintovideourl;
  @override
  int? get videoId;
  @override
  String? get imageUrl;
  @override
  int? get imageId;
  @override
  String? get expert;
  @override
  String? get expertDesignation;
  @override
  String? get expertImage;
  @override
  String? get author;
  @override // Plans? plans,
  String? get programCategory;
  @override
  int? get enrolledUser;
  @override
  String? get status;
  @override
  String? get howItWorks;
  @override // List<Structure>? structure,
// List<Faq>? faq,
  String? get whatsappLink;
  @override
  String? get intakeFormLink;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDataImplCopyWith<_$ProgramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
