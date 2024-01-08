// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_program_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingProgramDescription _$UpcomingProgramDescriptionFromJson(
    Map<String, dynamic> json) {
  return _UpcomingProgramDescription.fromJson(json);
}

/// @nodoc
mixin _$UpcomingProgramDescription {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UpcomingProgramData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingProgramDescriptionCopyWith<UpcomingProgramDescription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingProgramDescriptionCopyWith<$Res> {
  factory $UpcomingProgramDescriptionCopyWith(UpcomingProgramDescription value,
          $Res Function(UpcomingProgramDescription) then) =
      _$UpcomingProgramDescriptionCopyWithImpl<$Res,
          UpcomingProgramDescription>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<UpcomingProgramData>? data,
      List<String>? category});
}

/// @nodoc
class _$UpcomingProgramDescriptionCopyWithImpl<$Res,
        $Val extends UpcomingProgramDescription>
    implements $UpcomingProgramDescriptionCopyWith<$Res> {
  _$UpcomingProgramDescriptionCopyWithImpl(this._value, this._then);

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
              as List<UpcomingProgramData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingProgramDescriptionImplCopyWith<$Res>
    implements $UpcomingProgramDescriptionCopyWith<$Res> {
  factory _$$UpcomingProgramDescriptionImplCopyWith(
          _$UpcomingProgramDescriptionImpl value,
          $Res Function(_$UpcomingProgramDescriptionImpl) then) =
      __$$UpcomingProgramDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<UpcomingProgramData>? data,
      List<String>? category});
}

/// @nodoc
class __$$UpcomingProgramDescriptionImplCopyWithImpl<$Res>
    extends _$UpcomingProgramDescriptionCopyWithImpl<$Res,
        _$UpcomingProgramDescriptionImpl>
    implements _$$UpcomingProgramDescriptionImplCopyWith<$Res> {
  __$$UpcomingProgramDescriptionImplCopyWithImpl(
      _$UpcomingProgramDescriptionImpl _value,
      $Res Function(_$UpcomingProgramDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$UpcomingProgramDescriptionImpl(
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
              as List<UpcomingProgramData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingProgramDescriptionImpl implements _UpcomingProgramDescription {
  const _$UpcomingProgramDescriptionImpl(
      {this.status,
      this.message,
      final List<UpcomingProgramData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$UpcomingProgramDescriptionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpcomingProgramDescriptionImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<UpcomingProgramData>? _data;
  @override
  List<UpcomingProgramData>? get data {
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
    return 'UpcomingProgramDescription(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingProgramDescriptionImpl &&
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
  _$$UpcomingProgramDescriptionImplCopyWith<_$UpcomingProgramDescriptionImpl>
      get copyWith => __$$UpcomingProgramDescriptionImplCopyWithImpl<
          _$UpcomingProgramDescriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingProgramDescriptionImplToJson(
      this,
    );
  }
}

abstract class _UpcomingProgramDescription
    implements UpcomingProgramDescription {
  const factory _UpcomingProgramDescription(
      {final bool? status,
      final String? message,
      final List<UpcomingProgramData>? data,
      final List<String>? category}) = _$UpcomingProgramDescriptionImpl;

  factory _UpcomingProgramDescription.fromJson(Map<String, dynamic> json) =
      _$UpcomingProgramDescriptionImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<UpcomingProgramData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingProgramDescriptionImplCopyWith<_$UpcomingProgramDescriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpcomingProgramData _$UpcomingProgramDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$UpcomingProgramData {
  Overview? get overview => throw _privateConstructorUsedError;
  AboutTheExpert? get aboutTheExpert => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get programintovideourl => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get imageId => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get programdescription => throw _privateConstructorUsedError;
  int? get numberofSessions => throw _privateConstructorUsedError;
  Plans? get plans => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  String? get programCategory => throw _privateConstructorUsedError;
  int? get enrolledUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get teamImage => throw _privateConstructorUsedError;
  String? get howItWorks => throw _privateConstructorUsedError;
  String? get structure => throw _privateConstructorUsedError;
  String? get faq => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingProgramDataCopyWith<UpcomingProgramData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingProgramDataCopyWith<$Res> {
  factory $UpcomingProgramDataCopyWith(
          UpcomingProgramData value, $Res Function(UpcomingProgramData) then) =
      _$UpcomingProgramDataCopyWithImpl<$Res, UpcomingProgramData>;
  @useResult
  $Res call(
      {Overview? overview,
      AboutTheExpert? aboutTheExpert,
      String? id,
      String? title,
      String? slug,
      int? rating,
      String? programintovideourl,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      String? programdescription,
      int? numberofSessions,
      Plans? plans,
      DateTime? startDate,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? teamImage,
      String? howItWorks,
      String? structure,
      String? faq,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

  $OverviewCopyWith<$Res>? get overview;
  $AboutTheExpertCopyWith<$Res>? get aboutTheExpert;
  $PlansCopyWith<$Res>? get plans;
}

/// @nodoc
class _$UpcomingProgramDataCopyWithImpl<$Res, $Val extends UpcomingProgramData>
    implements $UpcomingProgramDataCopyWith<$Res> {
  _$UpcomingProgramDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = freezed,
    Object? aboutTheExpert = freezed,
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
    Object? programdescription = freezed,
    Object? numberofSessions = freezed,
    Object? plans = freezed,
    Object? startDate = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? teamImage = freezed,
    Object? howItWorks = freezed,
    Object? structure = freezed,
    Object? faq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview?,
      aboutTheExpert: freezed == aboutTheExpert
          ? _value.aboutTheExpert
          : aboutTheExpert // ignore: cast_nullable_to_non_nullable
              as AboutTheExpert?,
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
              as int?,
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
      programdescription: freezed == programdescription
          ? _value.programdescription
          : programdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      numberofSessions: freezed == numberofSessions
          ? _value.numberofSessions
          : numberofSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      plans: freezed == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Plans?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      teamImage: freezed == teamImage
          ? _value.teamImage
          : teamImage // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $OverviewCopyWith<$Res>? get overview {
    if (_value.overview == null) {
      return null;
    }

    return $OverviewCopyWith<$Res>(_value.overview!, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AboutTheExpertCopyWith<$Res>? get aboutTheExpert {
    if (_value.aboutTheExpert == null) {
      return null;
    }

    return $AboutTheExpertCopyWith<$Res>(_value.aboutTheExpert!, (value) {
      return _then(_value.copyWith(aboutTheExpert: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlansCopyWith<$Res>? get plans {
    if (_value.plans == null) {
      return null;
    }

    return $PlansCopyWith<$Res>(_value.plans!, (value) {
      return _then(_value.copyWith(plans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $UpcomingProgramDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Overview? overview,
      AboutTheExpert? aboutTheExpert,
      String? id,
      String? title,
      String? slug,
      int? rating,
      String? programintovideourl,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      String? programdescription,
      int? numberofSessions,
      Plans? plans,
      DateTime? startDate,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? teamImage,
      String? howItWorks,
      String? structure,
      String? faq,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v});

  @override
  $OverviewCopyWith<$Res>? get overview;
  @override
  $AboutTheExpertCopyWith<$Res>? get aboutTheExpert;
  @override
  $PlansCopyWith<$Res>? get plans;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$UpcomingProgramDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = freezed,
    Object? aboutTheExpert = freezed,
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
    Object? programdescription = freezed,
    Object? numberofSessions = freezed,
    Object? plans = freezed,
    Object? startDate = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? teamImage = freezed,
    Object? howItWorks = freezed,
    Object? structure = freezed,
    Object? faq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$DatumImpl(
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as Overview?,
      aboutTheExpert: freezed == aboutTheExpert
          ? _value.aboutTheExpert
          : aboutTheExpert // ignore: cast_nullable_to_non_nullable
              as AboutTheExpert?,
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
              as int?,
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
      programdescription: freezed == programdescription
          ? _value.programdescription
          : programdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      numberofSessions: freezed == numberofSessions
          ? _value.numberofSessions
          : numberofSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      plans: freezed == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Plans?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      teamImage: freezed == teamImage
          ? _value.teamImage
          : teamImage // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.overview,
      this.aboutTheExpert,
      this.id,
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
      this.programdescription,
      this.numberofSessions,
      this.plans,
      this.startDate,
      this.programCategory,
      this.enrolledUser,
      this.status,
      this.teamImage,
      this.howItWorks,
      this.structure,
      this.faq,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final Overview? overview;
  @override
  final AboutTheExpert? aboutTheExpert;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? slug;
  @override
  final int? rating;
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
  @override
  final String? programdescription;
  @override
  final int? numberofSessions;
  @override
  final Plans? plans;
  @override
  final DateTime? startDate;
  @override
  final String? programCategory;
  @override
  final int? enrolledUser;
  @override
  final String? status;
  @override
  final String? teamImage;
  @override
  final String? howItWorks;
  @override
  final String? structure;
  @override
  final String? faq;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'UpcomingProgramData(overview: $overview, aboutTheExpert: $aboutTheExpert, id: $id, title: $title, slug: $slug, rating: $rating, programintovideourl: $programintovideourl, videoId: $videoId, imageUrl: $imageUrl, imageId: $imageId, expert: $expert, expertDesignation: $expertDesignation, expertImage: $expertImage, author: $author, programdescription: $programdescription, numberofSessions: $numberofSessions, plans: $plans, startDate: $startDate, programCategory: $programCategory, enrolledUser: $enrolledUser, status: $status, teamImage: $teamImage, howItWorks: $howItWorks, structure: $structure, faq: $faq, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.aboutTheExpert, aboutTheExpert) ||
                other.aboutTheExpert == aboutTheExpert) &&
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
            (identical(other.programdescription, programdescription) ||
                other.programdescription == programdescription) &&
            (identical(other.numberofSessions, numberofSessions) ||
                other.numberofSessions == numberofSessions) &&
            (identical(other.plans, plans) || other.plans == plans) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.programCategory, programCategory) ||
                other.programCategory == programCategory) &&
            (identical(other.enrolledUser, enrolledUser) ||
                other.enrolledUser == enrolledUser) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.teamImage, teamImage) ||
                other.teamImage == teamImage) &&
            (identical(other.howItWorks, howItWorks) ||
                other.howItWorks == howItWorks) &&
            (identical(other.structure, structure) ||
                other.structure == structure) &&
            (identical(other.faq, faq) || other.faq == faq) &&
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
        overview,
        aboutTheExpert,
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
        programdescription,
        numberofSessions,
        plans,
        startDate,
        programCategory,
        enrolledUser,
        status,
        teamImage,
        howItWorks,
        structure,
        faq,
        createdAt,
        updatedAt,
        v
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements UpcomingProgramData {
  const factory _Datum(
      {final Overview? overview,
      final AboutTheExpert? aboutTheExpert,
      final String? id,
      final String? title,
      final String? slug,
      final int? rating,
      final String? programintovideourl,
      final int? videoId,
      final String? imageUrl,
      final int? imageId,
      final String? expert,
      final String? expertDesignation,
      final String? expertImage,
      final String? author,
      final String? programdescription,
      final int? numberofSessions,
      final Plans? plans,
      final DateTime? startDate,
      final String? programCategory,
      final int? enrolledUser,
      final String? status,
      final String? teamImage,
      final String? howItWorks,
      final String? structure,
      final String? faq,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  Overview? get overview;
  @override
  AboutTheExpert? get aboutTheExpert;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get slug;
  @override
  int? get rating;
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
  @override
  String? get programdescription;
  @override
  int? get numberofSessions;
  @override
  Plans? get plans;
  @override
  DateTime? get startDate;
  @override
  String? get programCategory;
  @override
  int? get enrolledUser;
  @override
  String? get status;
  @override
  String? get teamImage;
  @override
  String? get howItWorks;
  @override
  String? get structure;
  @override
  String? get faq;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutTheExpert _$AboutTheExpertFromJson(Map<String, dynamic> json) {
  return _AboutTheExpert.fromJson(json);
}

/// @nodoc
mixin _$AboutTheExpert {
  String? get expertDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutTheExpertCopyWith<AboutTheExpert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutTheExpertCopyWith<$Res> {
  factory $AboutTheExpertCopyWith(
          AboutTheExpert value, $Res Function(AboutTheExpert) then) =
      _$AboutTheExpertCopyWithImpl<$Res, AboutTheExpert>;
  @useResult
  $Res call({String? expertDescription});
}

/// @nodoc
class _$AboutTheExpertCopyWithImpl<$Res, $Val extends AboutTheExpert>
    implements $AboutTheExpertCopyWith<$Res> {
  _$AboutTheExpertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertDescription = freezed,
  }) {
    return _then(_value.copyWith(
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutTheExpertImplCopyWith<$Res>
    implements $AboutTheExpertCopyWith<$Res> {
  factory _$$AboutTheExpertImplCopyWith(_$AboutTheExpertImpl value,
          $Res Function(_$AboutTheExpertImpl) then) =
      __$$AboutTheExpertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? expertDescription});
}

/// @nodoc
class __$$AboutTheExpertImplCopyWithImpl<$Res>
    extends _$AboutTheExpertCopyWithImpl<$Res, _$AboutTheExpertImpl>
    implements _$$AboutTheExpertImplCopyWith<$Res> {
  __$$AboutTheExpertImplCopyWithImpl(
      _$AboutTheExpertImpl _value, $Res Function(_$AboutTheExpertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertDescription = freezed,
  }) {
    return _then(_$AboutTheExpertImpl(
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutTheExpertImpl implements _AboutTheExpert {
  const _$AboutTheExpertImpl({this.expertDescription});

  factory _$AboutTheExpertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutTheExpertImplFromJson(json);

  @override
  final String? expertDescription;

  @override
  String toString() {
    return 'AboutTheExpert(expertDescription: $expertDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutTheExpertImpl &&
            (identical(other.expertDescription, expertDescription) ||
                other.expertDescription == expertDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expertDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutTheExpertImplCopyWith<_$AboutTheExpertImpl> get copyWith =>
      __$$AboutTheExpertImplCopyWithImpl<_$AboutTheExpertImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutTheExpertImplToJson(
      this,
    );
  }
}

abstract class _AboutTheExpert implements AboutTheExpert {
  const factory _AboutTheExpert({final String? expertDescription}) =
      _$AboutTheExpertImpl;

  factory _AboutTheExpert.fromJson(Map<String, dynamic> json) =
      _$AboutTheExpertImpl.fromJson;

  @override
  String? get expertDescription;
  @override
  @JsonKey(ignore: true)
  _$$AboutTheExpertImplCopyWith<_$AboutTheExpertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Overview _$OverviewFromJson(Map<String, dynamic> json) {
  return _Overview.fromJson(json);
}

/// @nodoc
mixin _$Overview {
  LetTheDataSpeak? get letTheDataSpeak => throw _privateConstructorUsedError;
  String? get whatWeOffer => throw _privateConstructorUsedError;
  String? get theOutcome => throw _privateConstructorUsedError;
  String? get overviewDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewCopyWith<Overview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewCopyWith<$Res> {
  factory $OverviewCopyWith(Overview value, $Res Function(Overview) then) =
      _$OverviewCopyWithImpl<$Res, Overview>;
  @useResult
  $Res call(
      {LetTheDataSpeak? letTheDataSpeak,
      String? whatWeOffer,
      String? theOutcome,
      String? overviewDescription});

  $LetTheDataSpeakCopyWith<$Res>? get letTheDataSpeak;
}

/// @nodoc
class _$OverviewCopyWithImpl<$Res, $Val extends Overview>
    implements $OverviewCopyWith<$Res> {
  _$OverviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letTheDataSpeak = freezed,
    Object? whatWeOffer = freezed,
    Object? theOutcome = freezed,
    Object? overviewDescription = freezed,
  }) {
    return _then(_value.copyWith(
      letTheDataSpeak: freezed == letTheDataSpeak
          ? _value.letTheDataSpeak
          : letTheDataSpeak // ignore: cast_nullable_to_non_nullable
              as LetTheDataSpeak?,
      whatWeOffer: freezed == whatWeOffer
          ? _value.whatWeOffer
          : whatWeOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      theOutcome: freezed == theOutcome
          ? _value.theOutcome
          : theOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
      overviewDescription: freezed == overviewDescription
          ? _value.overviewDescription
          : overviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LetTheDataSpeakCopyWith<$Res>? get letTheDataSpeak {
    if (_value.letTheDataSpeak == null) {
      return null;
    }

    return $LetTheDataSpeakCopyWith<$Res>(_value.letTheDataSpeak!, (value) {
      return _then(_value.copyWith(letTheDataSpeak: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res>
    implements $OverviewCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
          _$OverviewImpl value, $Res Function(_$OverviewImpl) then) =
      __$$OverviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LetTheDataSpeak? letTheDataSpeak,
      String? whatWeOffer,
      String? theOutcome,
      String? overviewDescription});

  @override
  $LetTheDataSpeakCopyWith<$Res>? get letTheDataSpeak;
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$OverviewCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
      _$OverviewImpl _value, $Res Function(_$OverviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? letTheDataSpeak = freezed,
    Object? whatWeOffer = freezed,
    Object? theOutcome = freezed,
    Object? overviewDescription = freezed,
  }) {
    return _then(_$OverviewImpl(
      letTheDataSpeak: freezed == letTheDataSpeak
          ? _value.letTheDataSpeak
          : letTheDataSpeak // ignore: cast_nullable_to_non_nullable
              as LetTheDataSpeak?,
      whatWeOffer: freezed == whatWeOffer
          ? _value.whatWeOffer
          : whatWeOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      theOutcome: freezed == theOutcome
          ? _value.theOutcome
          : theOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
      overviewDescription: freezed == overviewDescription
          ? _value.overviewDescription
          : overviewDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewImpl implements _Overview {
  const _$OverviewImpl(
      {this.letTheDataSpeak,
      this.whatWeOffer,
      this.theOutcome,
      this.overviewDescription});

  factory _$OverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewImplFromJson(json);

  @override
  final LetTheDataSpeak? letTheDataSpeak;
  @override
  final String? whatWeOffer;
  @override
  final String? theOutcome;
  @override
  final String? overviewDescription;

  @override
  String toString() {
    return 'Overview(letTheDataSpeak: $letTheDataSpeak, whatWeOffer: $whatWeOffer, theOutcome: $theOutcome, overviewDescription: $overviewDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewImpl &&
            (identical(other.letTheDataSpeak, letTheDataSpeak) ||
                other.letTheDataSpeak == letTheDataSpeak) &&
            (identical(other.whatWeOffer, whatWeOffer) ||
                other.whatWeOffer == whatWeOffer) &&
            (identical(other.theOutcome, theOutcome) ||
                other.theOutcome == theOutcome) &&
            (identical(other.overviewDescription, overviewDescription) ||
                other.overviewDescription == overviewDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, letTheDataSpeak, whatWeOffer,
      theOutcome, overviewDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      __$$OverviewImplCopyWithImpl<_$OverviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewImplToJson(
      this,
    );
  }
}

abstract class _Overview implements Overview {
  const factory _Overview(
      {final LetTheDataSpeak? letTheDataSpeak,
      final String? whatWeOffer,
      final String? theOutcome,
      final String? overviewDescription}) = _$OverviewImpl;

  factory _Overview.fromJson(Map<String, dynamic> json) =
      _$OverviewImpl.fromJson;

  @override
  LetTheDataSpeak? get letTheDataSpeak;
  @override
  String? get whatWeOffer;
  @override
  String? get theOutcome;
  @override
  String? get overviewDescription;
  @override
  @JsonKey(ignore: true)
  _$$OverviewImplCopyWith<_$OverviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LetTheDataSpeak _$LetTheDataSpeakFromJson(Map<String, dynamic> json) {
  return _LetTheDataSpeak.fromJson(json);
}

/// @nodoc
mixin _$LetTheDataSpeak {
  int? get batches => throw _privateConstructorUsedError;
  int? get participants => throw _privateConstructorUsedError;
  int? get benefitted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LetTheDataSpeakCopyWith<LetTheDataSpeak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LetTheDataSpeakCopyWith<$Res> {
  factory $LetTheDataSpeakCopyWith(
          LetTheDataSpeak value, $Res Function(LetTheDataSpeak) then) =
      _$LetTheDataSpeakCopyWithImpl<$Res, LetTheDataSpeak>;
  @useResult
  $Res call({int? batches, int? participants, int? benefitted});
}

/// @nodoc
class _$LetTheDataSpeakCopyWithImpl<$Res, $Val extends LetTheDataSpeak>
    implements $LetTheDataSpeakCopyWith<$Res> {
  _$LetTheDataSpeakCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batches = freezed,
    Object? participants = freezed,
    Object? benefitted = freezed,
  }) {
    return _then(_value.copyWith(
      batches: freezed == batches
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      benefitted: freezed == benefitted
          ? _value.benefitted
          : benefitted // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LetTheDataSpeakImplCopyWith<$Res>
    implements $LetTheDataSpeakCopyWith<$Res> {
  factory _$$LetTheDataSpeakImplCopyWith(_$LetTheDataSpeakImpl value,
          $Res Function(_$LetTheDataSpeakImpl) then) =
      __$$LetTheDataSpeakImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? batches, int? participants, int? benefitted});
}

/// @nodoc
class __$$LetTheDataSpeakImplCopyWithImpl<$Res>
    extends _$LetTheDataSpeakCopyWithImpl<$Res, _$LetTheDataSpeakImpl>
    implements _$$LetTheDataSpeakImplCopyWith<$Res> {
  __$$LetTheDataSpeakImplCopyWithImpl(
      _$LetTheDataSpeakImpl _value, $Res Function(_$LetTheDataSpeakImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batches = freezed,
    Object? participants = freezed,
    Object? benefitted = freezed,
  }) {
    return _then(_$LetTheDataSpeakImpl(
      batches: freezed == batches
          ? _value.batches
          : batches // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as int?,
      benefitted: freezed == benefitted
          ? _value.benefitted
          : benefitted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LetTheDataSpeakImpl implements _LetTheDataSpeak {
  const _$LetTheDataSpeakImpl(
      {this.batches, this.participants, this.benefitted});

  factory _$LetTheDataSpeakImpl.fromJson(Map<String, dynamic> json) =>
      _$$LetTheDataSpeakImplFromJson(json);

  @override
  final int? batches;
  @override
  final int? participants;
  @override
  final int? benefitted;

  @override
  String toString() {
    return 'LetTheDataSpeak(batches: $batches, participants: $participants, benefitted: $benefitted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LetTheDataSpeakImpl &&
            (identical(other.batches, batches) || other.batches == batches) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.benefitted, benefitted) ||
                other.benefitted == benefitted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, batches, participants, benefitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LetTheDataSpeakImplCopyWith<_$LetTheDataSpeakImpl> get copyWith =>
      __$$LetTheDataSpeakImplCopyWithImpl<_$LetTheDataSpeakImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LetTheDataSpeakImplToJson(
      this,
    );
  }
}

abstract class _LetTheDataSpeak implements LetTheDataSpeak {
  const factory _LetTheDataSpeak(
      {final int? batches,
      final int? participants,
      final int? benefitted}) = _$LetTheDataSpeakImpl;

  factory _LetTheDataSpeak.fromJson(Map<String, dynamic> json) =
      _$LetTheDataSpeakImpl.fromJson;

  @override
  int? get batches;
  @override
  int? get participants;
  @override
  int? get benefitted;
  @override
  @JsonKey(ignore: true)
  _$$LetTheDataSpeakImplCopyWith<_$LetTheDataSpeakImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plans _$PlansFromJson(Map<String, dynamic> json) {
  return _Plans.fromJson(json);
}

/// @nodoc
mixin _$Plans {
  List<Plansdetail>? get plansdetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlansCopyWith<Plans> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlansCopyWith<$Res> {
  factory $PlansCopyWith(Plans value, $Res Function(Plans) then) =
      _$PlansCopyWithImpl<$Res, Plans>;
  @useResult
  $Res call({List<Plansdetail>? plansdetails});
}

/// @nodoc
class _$PlansCopyWithImpl<$Res, $Val extends Plans>
    implements $PlansCopyWith<$Res> {
  _$PlansCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plansdetails = freezed,
  }) {
    return _then(_value.copyWith(
      plansdetails: freezed == plansdetails
          ? _value.plansdetails
          : plansdetails // ignore: cast_nullable_to_non_nullable
              as List<Plansdetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlansImplCopyWith<$Res> implements $PlansCopyWith<$Res> {
  factory _$$PlansImplCopyWith(
          _$PlansImpl value, $Res Function(_$PlansImpl) then) =
      __$$PlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plansdetail>? plansdetails});
}

/// @nodoc
class __$$PlansImplCopyWithImpl<$Res>
    extends _$PlansCopyWithImpl<$Res, _$PlansImpl>
    implements _$$PlansImplCopyWith<$Res> {
  __$$PlansImplCopyWithImpl(
      _$PlansImpl _value, $Res Function(_$PlansImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plansdetails = freezed,
  }) {
    return _then(_$PlansImpl(
      plansdetails: freezed == plansdetails
          ? _value._plansdetails
          : plansdetails // ignore: cast_nullable_to_non_nullable
              as List<Plansdetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlansImpl implements _Plans {
  const _$PlansImpl({final List<Plansdetail>? plansdetails})
      : _plansdetails = plansdetails;

  factory _$PlansImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlansImplFromJson(json);

  final List<Plansdetail>? _plansdetails;
  @override
  List<Plansdetail>? get plansdetails {
    final value = _plansdetails;
    if (value == null) return null;
    if (_plansdetails is EqualUnmodifiableListView) return _plansdetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Plans(plansdetails: $plansdetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlansImpl &&
            const DeepCollectionEquality()
                .equals(other._plansdetails, _plansdetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_plansdetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlansImplCopyWith<_$PlansImpl> get copyWith =>
      __$$PlansImplCopyWithImpl<_$PlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlansImplToJson(
      this,
    );
  }
}

abstract class _Plans implements Plans {
  const factory _Plans({final List<Plansdetail>? plansdetails}) = _$PlansImpl;

  factory _Plans.fromJson(Map<String, dynamic> json) = _$PlansImpl.fromJson;

  @override
  List<Plansdetail>? get plansdetails;
  @override
  @JsonKey(ignore: true)
  _$$PlansImplCopyWith<_$PlansImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plansdetail _$PlansdetailFromJson(Map<String, dynamic> json) {
  return _Plansdetail.fromJson(json);
}

/// @nodoc
mixin _$Plansdetail {
  String? get planDuration => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discountedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlansdetailCopyWith<Plansdetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlansdetailCopyWith<$Res> {
  factory $PlansdetailCopyWith(
          Plansdetail value, $Res Function(Plansdetail) then) =
      _$PlansdetailCopyWithImpl<$Res, Plansdetail>;
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class _$PlansdetailCopyWithImpl<$Res, $Val extends Plansdetail>
    implements $PlansdetailCopyWith<$Res> {
  _$PlansdetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDuration = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
  }) {
    return _then(_value.copyWith(
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlansdetailImplCopyWith<$Res>
    implements $PlansdetailCopyWith<$Res> {
  factory _$$PlansdetailImplCopyWith(
          _$PlansdetailImpl value, $Res Function(_$PlansdetailImpl) then) =
      __$$PlansdetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class __$$PlansdetailImplCopyWithImpl<$Res>
    extends _$PlansdetailCopyWithImpl<$Res, _$PlansdetailImpl>
    implements _$$PlansdetailImplCopyWith<$Res> {
  __$$PlansdetailImplCopyWithImpl(
      _$PlansdetailImpl _value, $Res Function(_$PlansdetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDuration = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
  }) {
    return _then(_$PlansdetailImpl(
      planDuration: freezed == planDuration
          ? _value.planDuration
          : planDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountedPrice: freezed == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlansdetailImpl implements _Plansdetail {
  const _$PlansdetailImpl(
      {this.planDuration, this.discount, this.price, this.discountedPrice});

  factory _$PlansdetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlansdetailImplFromJson(json);

  @override
  final String? planDuration;
  @override
  final String? discount;
  @override
  final int? price;
  @override
  final int? discountedPrice;

  @override
  String toString() {
    return 'Plansdetail(planDuration: $planDuration, discount: $discount, price: $price, discountedPrice: $discountedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlansdetailImpl &&
            (identical(other.planDuration, planDuration) ||
                other.planDuration == planDuration) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planDuration, discount, price, discountedPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlansdetailImplCopyWith<_$PlansdetailImpl> get copyWith =>
      __$$PlansdetailImplCopyWithImpl<_$PlansdetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlansdetailImplToJson(
      this,
    );
  }
}

abstract class _Plansdetail implements Plansdetail {
  const factory _Plansdetail(
      {final String? planDuration,
      final String? discount,
      final int? price,
      final int? discountedPrice}) = _$PlansdetailImpl;

  factory _Plansdetail.fromJson(Map<String, dynamic> json) =
      _$PlansdetailImpl.fromJson;

  @override
  String? get planDuration;
  @override
  String? get discount;
  @override
  int? get price;
  @override
  int? get discountedPrice;
  @override
  @JsonKey(ignore: true)
  _$$PlansdetailImplCopyWith<_$PlansdetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
