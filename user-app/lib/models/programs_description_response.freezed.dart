// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'programs_description_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProgramsDescriptionResponse _$ProgramsDescriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _ProgramsDescriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$ProgramsDescriptionResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  ProgramDescriptionData? get data => throw _privateConstructorUsedError;
  List<dynamic>? get continuitySession => throw _privateConstructorUsedError;
  int? get continuityCounter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramsDescriptionResponseCopyWith<ProgramsDescriptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramsDescriptionResponseCopyWith<$Res> {
  factory $ProgramsDescriptionResponseCopyWith(
          ProgramsDescriptionResponse value,
          $Res Function(ProgramsDescriptionResponse) then) =
      _$ProgramsDescriptionResponseCopyWithImpl<$Res,
          ProgramsDescriptionResponse>;
  @useResult
  $Res call(
      {String? message,
      bool? status,
      ProgramDescriptionData? data,
      List<dynamic>? continuitySession,
      int? continuityCounter});

  $ProgramDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProgramsDescriptionResponseCopyWithImpl<$Res,
        $Val extends ProgramsDescriptionResponse>
    implements $ProgramsDescriptionResponseCopyWith<$Res> {
  _$ProgramsDescriptionResponseCopyWithImpl(this._value, this._then);

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
    Object? continuitySession = freezed,
    Object? continuityCounter = freezed,
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
              as ProgramDescriptionData?,
      continuitySession: freezed == continuitySession
          ? _value.continuitySession
          : continuitySession // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      continuityCounter: freezed == continuityCounter
          ? _value.continuityCounter
          : continuityCounter // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramDescriptionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProgramDescriptionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramsDescriptionResponseImplCopyWith<$Res>
    implements $ProgramsDescriptionResponseCopyWith<$Res> {
  factory _$$ProgramsDescriptionResponseImplCopyWith(
          _$ProgramsDescriptionResponseImpl value,
          $Res Function(_$ProgramsDescriptionResponseImpl) then) =
      __$$ProgramsDescriptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? message,
      bool? status,
      ProgramDescriptionData? data,
      List<dynamic>? continuitySession,
      int? continuityCounter});

  @override
  $ProgramDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProgramsDescriptionResponseImplCopyWithImpl<$Res>
    extends _$ProgramsDescriptionResponseCopyWithImpl<$Res,
        _$ProgramsDescriptionResponseImpl>
    implements _$$ProgramsDescriptionResponseImplCopyWith<$Res> {
  __$$ProgramsDescriptionResponseImplCopyWithImpl(
      _$ProgramsDescriptionResponseImpl _value,
      $Res Function(_$ProgramsDescriptionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
    Object? continuitySession = freezed,
    Object? continuityCounter = freezed,
  }) {
    return _then(_$ProgramsDescriptionResponseImpl(
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
              as ProgramDescriptionData?,
      continuitySession: freezed == continuitySession
          ? _value._continuitySession
          : continuitySession // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      continuityCounter: freezed == continuityCounter
          ? _value.continuityCounter
          : continuityCounter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramsDescriptionResponseImpl
    implements _ProgramsDescriptionResponse {
  const _$ProgramsDescriptionResponseImpl(
      {this.message,
      this.status,
      this.data,
      final List<dynamic>? continuitySession,
      this.continuityCounter})
      : _continuitySession = continuitySession;

  factory _$ProgramsDescriptionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProgramsDescriptionResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final ProgramDescriptionData? data;
  final List<dynamic>? _continuitySession;
  @override
  List<dynamic>? get continuitySession {
    final value = _continuitySession;
    if (value == null) return null;
    if (_continuitySession is EqualUnmodifiableListView)
      return _continuitySession;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? continuityCounter;

  @override
  String toString() {
    return 'ProgramsDescriptionResponse(message: $message, status: $status, data: $data, continuitySession: $continuitySession, continuityCounter: $continuityCounter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramsDescriptionResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._continuitySession, _continuitySession) &&
            (identical(other.continuityCounter, continuityCounter) ||
                other.continuityCounter == continuityCounter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      status,
      data,
      const DeepCollectionEquality().hash(_continuitySession),
      continuityCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramsDescriptionResponseImplCopyWith<_$ProgramsDescriptionResponseImpl>
      get copyWith => __$$ProgramsDescriptionResponseImplCopyWithImpl<
          _$ProgramsDescriptionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramsDescriptionResponseImplToJson(
      this,
    );
  }
}

abstract class _ProgramsDescriptionResponse
    implements ProgramsDescriptionResponse {
  const factory _ProgramsDescriptionResponse(
      {final String? message,
      final bool? status,
      final ProgramDescriptionData? data,
      final List<dynamic>? continuitySession,
      final int? continuityCounter}) = _$ProgramsDescriptionResponseImpl;

  factory _ProgramsDescriptionResponse.fromJson(Map<String, dynamic> json) =
      _$ProgramsDescriptionResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  ProgramDescriptionData? get data;
  @override
  List<dynamic>? get continuitySession;
  @override
  int? get continuityCounter;
  @override
  @JsonKey(ignore: true)
  _$$ProgramsDescriptionResponseImplCopyWith<_$ProgramsDescriptionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgramDescriptionData _$ProgramDescriptionDataFromJson(
    Map<String, dynamic> json) {
  return _ProgramDescriptionData.fromJson(json);
}

/// @nodoc
mixin _$ProgramDescriptionData {
  AboutTheExpert? get aboutTheExpert => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get programintovideourl => throw _privateConstructorUsedError;
  String? get fordeseases => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get imageId => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  Plans? get plans => throw _privateConstructorUsedError;
  String? get programCategory => throw _privateConstructorUsedError;
  int? get enrolledUser => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get howItWorks => throw _privateConstructorUsedError;
  List<Structure>? get structure => throw _privateConstructorUsedError;
  @JsonKey(name: 'FAQ')
  List<Faq>? get faq => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  String? get intakeFormLink => throw _privateConstructorUsedError;
  String? get whatsappLink => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  bool? get isSubscribed => throw _privateConstructorUsedError;
  bool? get isSesssionPaused => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDescriptionDataCopyWith<ProgramDescriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDescriptionDataCopyWith<$Res> {
  factory $ProgramDescriptionDataCopyWith(ProgramDescriptionData value,
          $Res Function(ProgramDescriptionData) then) =
      _$ProgramDescriptionDataCopyWithImpl<$Res, ProgramDescriptionData>;
  @useResult
  $Res call(
      {AboutTheExpert? aboutTheExpert,
      @JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      double? rating,
      String? programintovideourl,
      String? fordeseases,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      Plans? plans,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? overview,
      String? howItWorks,
      List<Structure>? structure,
      @JsonKey(name: 'FAQ') List<Faq>? faq,
      bool? isDeleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? intakeFormLink,
      String? whatsappLink,
      DateTime? startDate,
      bool? isSubscribed,
      bool? isSesssionPaused});

  $AboutTheExpertCopyWith<$Res>? get aboutTheExpert;
  $PlansCopyWith<$Res>? get plans;
}

/// @nodoc
class _$ProgramDescriptionDataCopyWithImpl<$Res,
        $Val extends ProgramDescriptionData>
    implements $ProgramDescriptionDataCopyWith<$Res> {
  _$ProgramDescriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutTheExpert = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? rating = freezed,
    Object? programintovideourl = freezed,
    Object? fordeseases = freezed,
    Object? videoId = freezed,
    Object? imageUrl = freezed,
    Object? imageId = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? author = freezed,
    Object? plans = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? overview = freezed,
    Object? howItWorks = freezed,
    Object? structure = freezed,
    Object? faq = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? intakeFormLink = freezed,
    Object? whatsappLink = freezed,
    Object? startDate = freezed,
    Object? isSubscribed = freezed,
    Object? isSesssionPaused = freezed,
  }) {
    return _then(_value.copyWith(
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
              as double?,
      programintovideourl: freezed == programintovideourl
          ? _value.programintovideourl
          : programintovideourl // ignore: cast_nullable_to_non_nullable
              as String?,
      fordeseases: freezed == fordeseases
          ? _value.fordeseases
          : fordeseases // ignore: cast_nullable_to_non_nullable
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
      plans: freezed == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Plans?,
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
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<Structure>?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<Faq>?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
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
      intakeFormLink: freezed == intakeFormLink
          ? _value.intakeFormLink
          : intakeFormLink // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSubscribed: freezed == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSesssionPaused: freezed == isSesssionPaused
          ? _value.isSesssionPaused
          : isSesssionPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
abstract class _$$ProgramDescriptionDataImplCopyWith<$Res>
    implements $ProgramDescriptionDataCopyWith<$Res> {
  factory _$$ProgramDescriptionDataImplCopyWith(
          _$ProgramDescriptionDataImpl value,
          $Res Function(_$ProgramDescriptionDataImpl) then) =
      __$$ProgramDescriptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AboutTheExpert? aboutTheExpert,
      @JsonKey(name: '_id') String? id,
      String? title,
      String? slug,
      double? rating,
      String? programintovideourl,
      String? fordeseases,
      int? videoId,
      String? imageUrl,
      int? imageId,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? author,
      Plans? plans,
      String? programCategory,
      int? enrolledUser,
      String? status,
      String? overview,
      String? howItWorks,
      List<Structure>? structure,
      @JsonKey(name: 'FAQ') List<Faq>? faq,
      bool? isDeleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      String? intakeFormLink,
      String? whatsappLink,
      DateTime? startDate,
      bool? isSubscribed,
      bool? isSesssionPaused});

  @override
  $AboutTheExpertCopyWith<$Res>? get aboutTheExpert;
  @override
  $PlansCopyWith<$Res>? get plans;
}

/// @nodoc
class __$$ProgramDescriptionDataImplCopyWithImpl<$Res>
    extends _$ProgramDescriptionDataCopyWithImpl<$Res,
        _$ProgramDescriptionDataImpl>
    implements _$$ProgramDescriptionDataImplCopyWith<$Res> {
  __$$ProgramDescriptionDataImplCopyWithImpl(
      _$ProgramDescriptionDataImpl _value,
      $Res Function(_$ProgramDescriptionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutTheExpert = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? rating = freezed,
    Object? programintovideourl = freezed,
    Object? fordeseases = freezed,
    Object? videoId = freezed,
    Object? imageUrl = freezed,
    Object? imageId = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? author = freezed,
    Object? plans = freezed,
    Object? programCategory = freezed,
    Object? enrolledUser = freezed,
    Object? status = freezed,
    Object? overview = freezed,
    Object? howItWorks = freezed,
    Object? structure = freezed,
    Object? faq = freezed,
    Object? isDeleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? intakeFormLink = freezed,
    Object? whatsappLink = freezed,
    Object? startDate = freezed,
    Object? isSubscribed = freezed,
    Object? isSesssionPaused = freezed,
  }) {
    return _then(_$ProgramDescriptionDataImpl(
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
              as double?,
      programintovideourl: freezed == programintovideourl
          ? _value.programintovideourl
          : programintovideourl // ignore: cast_nullable_to_non_nullable
              as String?,
      fordeseases: freezed == fordeseases
          ? _value.fordeseases
          : fordeseases // ignore: cast_nullable_to_non_nullable
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
      plans: freezed == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as Plans?,
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
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      howItWorks: freezed == howItWorks
          ? _value.howItWorks
          : howItWorks // ignore: cast_nullable_to_non_nullable
              as String?,
      structure: freezed == structure
          ? _value._structure
          : structure // ignore: cast_nullable_to_non_nullable
              as List<Structure>?,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<Faq>?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
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
      intakeFormLink: freezed == intakeFormLink
          ? _value.intakeFormLink
          : intakeFormLink // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappLink: freezed == whatsappLink
          ? _value.whatsappLink
          : whatsappLink // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSubscribed: freezed == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSesssionPaused: freezed == isSesssionPaused
          ? _value.isSesssionPaused
          : isSesssionPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDescriptionDataImpl implements _ProgramDescriptionData {
  const _$ProgramDescriptionDataImpl(
      {this.aboutTheExpert,
      @JsonKey(name: '_id') this.id,
      this.title,
      this.slug,
      this.rating,
      this.programintovideourl,
      this.fordeseases,
      this.videoId,
      this.imageUrl,
      this.imageId,
      this.expert,
      this.expertDesignation,
      this.expertImage,
      this.author,
      this.plans,
      this.programCategory,
      this.enrolledUser,
      this.status,
      this.overview,
      this.howItWorks,
      final List<Structure>? structure,
      @JsonKey(name: 'FAQ') final List<Faq>? faq,
      this.isDeleted,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.intakeFormLink,
      this.whatsappLink,
      this.startDate,
      this.isSubscribed,
      this.isSesssionPaused})
      : _structure = structure,
        _faq = faq;

  factory _$ProgramDescriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDescriptionDataImplFromJson(json);

  @override
  final AboutTheExpert? aboutTheExpert;
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
  final String? fordeseases;
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
  final Plans? plans;
  @override
  final String? programCategory;
  @override
  final int? enrolledUser;
  @override
  final String? status;
  @override
  final String? overview;
  @override
  final String? howItWorks;
  final List<Structure>? _structure;
  @override
  List<Structure>? get structure {
    final value = _structure;
    if (value == null) return null;
    if (_structure is EqualUnmodifiableListView) return _structure;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Faq>? _faq;
  @override
  @JsonKey(name: 'FAQ')
  List<Faq>? get faq {
    final value = _faq;
    if (value == null) return null;
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isDeleted;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final String? intakeFormLink;
  @override
  final String? whatsappLink;
  @override
  final DateTime? startDate;
  @override
  final bool? isSubscribed;
  @override
  final bool? isSesssionPaused;

  @override
  String toString() {
    return 'ProgramDescriptionData(aboutTheExpert: $aboutTheExpert, id: $id, title: $title, slug: $slug, rating: $rating, programintovideourl: $programintovideourl, fordeseases: $fordeseases, videoId: $videoId, imageUrl: $imageUrl, imageId: $imageId, expert: $expert, expertDesignation: $expertDesignation, expertImage: $expertImage, author: $author, plans: $plans, programCategory: $programCategory, enrolledUser: $enrolledUser, status: $status, overview: $overview, howItWorks: $howItWorks, structure: $structure, faq: $faq, isDeleted: $isDeleted, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, intakeFormLink: $intakeFormLink, whatsappLink: $whatsappLink, startDate: $startDate, isSubscribed: $isSubscribed, isSesssionPaused: $isSesssionPaused)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDescriptionDataImpl &&
            (identical(other.aboutTheExpert, aboutTheExpert) ||
                other.aboutTheExpert == aboutTheExpert) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.programintovideourl, programintovideourl) ||
                other.programintovideourl == programintovideourl) &&
            (identical(other.fordeseases, fordeseases) ||
                other.fordeseases == fordeseases) &&
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
            (identical(other.plans, plans) || other.plans == plans) &&
            (identical(other.programCategory, programCategory) ||
                other.programCategory == programCategory) &&
            (identical(other.enrolledUser, enrolledUser) ||
                other.enrolledUser == enrolledUser) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.howItWorks, howItWorks) ||
                other.howItWorks == howItWorks) &&
            const DeepCollectionEquality()
                .equals(other._structure, _structure) &&
            const DeepCollectionEquality().equals(other._faq, _faq) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.intakeFormLink, intakeFormLink) ||
                other.intakeFormLink == intakeFormLink) &&
            (identical(other.whatsappLink, whatsappLink) ||
                other.whatsappLink == whatsappLink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.isSesssionPaused, isSesssionPaused) ||
                other.isSesssionPaused == isSesssionPaused));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        aboutTheExpert,
        id,
        title,
        slug,
        rating,
        programintovideourl,
        fordeseases,
        videoId,
        imageUrl,
        imageId,
        expert,
        expertDesignation,
        expertImage,
        author,
        plans,
        programCategory,
        enrolledUser,
        status,
        overview,
        howItWorks,
        const DeepCollectionEquality().hash(_structure),
        const DeepCollectionEquality().hash(_faq),
        isDeleted,
        createdAt,
        updatedAt,
        v,
        intakeFormLink,
        whatsappLink,
        startDate,
        isSubscribed,
        isSesssionPaused
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDescriptionDataImplCopyWith<_$ProgramDescriptionDataImpl>
      get copyWith => __$$ProgramDescriptionDataImplCopyWithImpl<
          _$ProgramDescriptionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDescriptionDataImplToJson(
      this,
    );
  }
}

abstract class _ProgramDescriptionData implements ProgramDescriptionData {
  const factory _ProgramDescriptionData(
      {final AboutTheExpert? aboutTheExpert,
      @JsonKey(name: '_id') final String? id,
      final String? title,
      final String? slug,
      final double? rating,
      final String? programintovideourl,
      final String? fordeseases,
      final int? videoId,
      final String? imageUrl,
      final int? imageId,
      final String? expert,
      final String? expertDesignation,
      final String? expertImage,
      final String? author,
      final Plans? plans,
      final String? programCategory,
      final int? enrolledUser,
      final String? status,
      final String? overview,
      final String? howItWorks,
      final List<Structure>? structure,
      @JsonKey(name: 'FAQ') final List<Faq>? faq,
      final bool? isDeleted,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final String? intakeFormLink,
      final String? whatsappLink,
      final DateTime? startDate,
      final bool? isSubscribed,
      final bool? isSesssionPaused}) = _$ProgramDescriptionDataImpl;

  factory _ProgramDescriptionData.fromJson(Map<String, dynamic> json) =
      _$ProgramDescriptionDataImpl.fromJson;

  @override
  AboutTheExpert? get aboutTheExpert;
  @override
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
  String? get fordeseases;
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
  Plans? get plans;
  @override
  String? get programCategory;
  @override
  int? get enrolledUser;
  @override
  String? get status;
  @override
  String? get overview;
  @override
  String? get howItWorks;
  @override
  List<Structure>? get structure;
  @override
  @JsonKey(name: 'FAQ')
  List<Faq>? get faq;
  @override
  bool? get isDeleted;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  String? get intakeFormLink;
  @override
  String? get whatsappLink;
  @override
  DateTime? get startDate;
  @override
  bool? get isSubscribed;
  @override
  bool? get isSesssionPaused;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDescriptionDataImplCopyWith<_$ProgramDescriptionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
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

Faq _$FaqFromJson(Map<String, dynamic> json) {
  return _Faq.fromJson(json);
}

/// @nodoc
mixin _$Faq {
  String? get ques => throw _privateConstructorUsedError;
  List<String>? get ans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqCopyWith<Faq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqCopyWith<$Res> {
  factory $FaqCopyWith(Faq value, $Res Function(Faq) then) =
      _$FaqCopyWithImpl<$Res, Faq>;
  @useResult
  $Res call({String? ques, List<String>? ans});
}

/// @nodoc
class _$FaqCopyWithImpl<$Res, $Val extends Faq> implements $FaqCopyWith<$Res> {
  _$FaqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ques = freezed,
    Object? ans = freezed,
  }) {
    return _then(_value.copyWith(
      ques: freezed == ques
          ? _value.ques
          : ques // ignore: cast_nullable_to_non_nullable
              as String?,
      ans: freezed == ans
          ? _value.ans
          : ans // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqImplCopyWith<$Res> implements $FaqCopyWith<$Res> {
  factory _$$FaqImplCopyWith(_$FaqImpl value, $Res Function(_$FaqImpl) then) =
      __$$FaqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ques, List<String>? ans});
}

/// @nodoc
class __$$FaqImplCopyWithImpl<$Res> extends _$FaqCopyWithImpl<$Res, _$FaqImpl>
    implements _$$FaqImplCopyWith<$Res> {
  __$$FaqImplCopyWithImpl(_$FaqImpl _value, $Res Function(_$FaqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ques = freezed,
    Object? ans = freezed,
  }) {
    return _then(_$FaqImpl(
      ques: freezed == ques
          ? _value.ques
          : ques // ignore: cast_nullable_to_non_nullable
              as String?,
      ans: freezed == ans
          ? _value._ans
          : ans // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqImpl implements _Faq {
  const _$FaqImpl({this.ques, final List<String>? ans}) : _ans = ans;

  factory _$FaqImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqImplFromJson(json);

  @override
  final String? ques;
  final List<String>? _ans;
  @override
  List<String>? get ans {
    final value = _ans;
    if (value == null) return null;
    if (_ans is EqualUnmodifiableListView) return _ans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Faq(ques: $ques, ans: $ans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqImpl &&
            (identical(other.ques, ques) || other.ques == ques) &&
            const DeepCollectionEquality().equals(other._ans, _ans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ques, const DeepCollectionEquality().hash(_ans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqImplCopyWith<_$FaqImpl> get copyWith =>
      __$$FaqImplCopyWithImpl<_$FaqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqImplToJson(
      this,
    );
  }
}

abstract class _Faq implements Faq {
  const factory _Faq({final String? ques, final List<String>? ans}) = _$FaqImpl;

  factory _Faq.fromJson(Map<String, dynamic> json) = _$FaqImpl.fromJson;

  @override
  String? get ques;
  @override
  List<String>? get ans;
  @override
  @JsonKey(ignore: true)
  _$$FaqImplCopyWith<_$FaqImpl> get copyWith =>
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
  String? get type => throw _privateConstructorUsedError;
  List<Plan>? get plans => throw _privateConstructorUsedError;

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
  $Res call({String? type, List<Plan>? plans});
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
    Object? type = freezed,
    Object? plans = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      plans: freezed == plans
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>?,
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
  $Res call({String? type, List<Plan>? plans});
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
    Object? type = freezed,
    Object? plans = freezed,
  }) {
    return _then(_$PlansdetailImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      plans: freezed == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<Plan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlansdetailImpl implements _Plansdetail {
  const _$PlansdetailImpl({this.type, final List<Plan>? plans})
      : _plans = plans;

  factory _$PlansdetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlansdetailImplFromJson(json);

  @override
  final String? type;
  final List<Plan>? _plans;
  @override
  List<Plan>? get plans {
    final value = _plans;
    if (value == null) return null;
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Plansdetail(type: $type, plans: $plans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlansdetailImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_plans));

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
  const factory _Plansdetail({final String? type, final List<Plan>? plans}) =
      _$PlansdetailImpl;

  factory _Plansdetail.fromJson(Map<String, dynamic> json) =
      _$PlansdetailImpl.fromJson;

  @override
  String? get type;
  @override
  List<Plan>? get plans;
  @override
  @JsonKey(ignore: true)
  _$$PlansdetailImplCopyWith<_$PlansdetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  String? get planDuration => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discountedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

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
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? planDuration,
      String? discount,
      int? price,
      int? discountedPrice});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planDuration = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? discountedPrice = freezed,
  }) {
    return _then(_$PlanImpl(
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
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {this.planDuration, this.discount, this.price, this.discountedPrice});

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

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
    return 'Plan(planDuration: $planDuration, discount: $discount, price: $price, discountedPrice: $discountedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
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
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {final String? planDuration,
      final String? discount,
      final int? price,
      final int? discountedPrice}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

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
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Structure _$StructureFromJson(Map<String, dynamic> json) {
  return _Structure.fromJson(json);
}

/// @nodoc
mixin _$Structure {
  String? get sessionTitle => throw _privateConstructorUsedError;
  String? get sessionDuration => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get sessionRecording => throw _privateConstructorUsedError;
  List<dynamic>? get sessionResources => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get sessionlink => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructureCopyWith<Structure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureCopyWith<$Res> {
  factory $StructureCopyWith(Structure value, $Res Function(Structure) then) =
      _$StructureCopyWithImpl<$Res, Structure>;
  @useResult
  $Res call(
      {String? sessionTitle,
      String? sessionDuration,
      DateTime? startDate,
      DateTime? endDate,
      String? startTime,
      String? sessionRecording,
      List<dynamic>? sessionResources,
      String? description,
      String? sessionlink,
      String? id});
}

/// @nodoc
class _$StructureCopyWithImpl<$Res, $Val extends Structure>
    implements $StructureCopyWith<$Res> {
  _$StructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionTitle = freezed,
    Object? sessionDuration = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? sessionRecording = freezed,
    Object? sessionResources = freezed,
    Object? description = freezed,
    Object? sessionlink = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      sessionTitle: freezed == sessionTitle
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDuration: freezed == sessionDuration
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionRecording: freezed == sessionRecording
          ? _value.sessionRecording
          : sessionRecording // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionResources: freezed == sessionResources
          ? _value.sessionResources
          : sessionResources // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionlink: freezed == sessionlink
          ? _value.sessionlink
          : sessionlink // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StructureImplCopyWith<$Res>
    implements $StructureCopyWith<$Res> {
  factory _$$StructureImplCopyWith(
          _$StructureImpl value, $Res Function(_$StructureImpl) then) =
      __$$StructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? sessionTitle,
      String? sessionDuration,
      DateTime? startDate,
      DateTime? endDate,
      String? startTime,
      String? sessionRecording,
      List<dynamic>? sessionResources,
      String? description,
      String? sessionlink,
      String? id});
}

/// @nodoc
class __$$StructureImplCopyWithImpl<$Res>
    extends _$StructureCopyWithImpl<$Res, _$StructureImpl>
    implements _$$StructureImplCopyWith<$Res> {
  __$$StructureImplCopyWithImpl(
      _$StructureImpl _value, $Res Function(_$StructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionTitle = freezed,
    Object? sessionDuration = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? sessionRecording = freezed,
    Object? sessionResources = freezed,
    Object? description = freezed,
    Object? sessionlink = freezed,
    Object? id = freezed,
  }) {
    return _then(_$StructureImpl(
      sessionTitle: freezed == sessionTitle
          ? _value.sessionTitle
          : sessionTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDuration: freezed == sessionDuration
          ? _value.sessionDuration
          : sessionDuration // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionRecording: freezed == sessionRecording
          ? _value.sessionRecording
          : sessionRecording // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionResources: freezed == sessionResources
          ? _value._sessionResources
          : sessionResources // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionlink: freezed == sessionlink
          ? _value.sessionlink
          : sessionlink // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureImpl implements _Structure {
  const _$StructureImpl(
      {this.sessionTitle,
      this.sessionDuration,
      this.startDate,
      this.endDate,
      this.startTime,
      this.sessionRecording,
      final List<dynamic>? sessionResources,
      this.description,
      this.sessionlink,
      this.id})
      : _sessionResources = sessionResources;

  factory _$StructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureImplFromJson(json);

  @override
  final String? sessionTitle;
  @override
  final String? sessionDuration;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? startTime;
  @override
  final String? sessionRecording;
  final List<dynamic>? _sessionResources;
  @override
  List<dynamic>? get sessionResources {
    final value = _sessionResources;
    if (value == null) return null;
    if (_sessionResources is EqualUnmodifiableListView)
      return _sessionResources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String? sessionlink;
  @override
  final String? id;

  @override
  String toString() {
    return 'Structure(sessionTitle: $sessionTitle, sessionDuration: $sessionDuration, startDate: $startDate, endDate: $endDate, startTime: $startTime, sessionRecording: $sessionRecording, sessionResources: $sessionResources, description: $description, sessionlink: $sessionlink, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureImpl &&
            (identical(other.sessionTitle, sessionTitle) ||
                other.sessionTitle == sessionTitle) &&
            (identical(other.sessionDuration, sessionDuration) ||
                other.sessionDuration == sessionDuration) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.sessionRecording, sessionRecording) ||
                other.sessionRecording == sessionRecording) &&
            const DeepCollectionEquality()
                .equals(other._sessionResources, _sessionResources) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sessionlink, sessionlink) ||
                other.sessionlink == sessionlink) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sessionTitle,
      sessionDuration,
      startDate,
      endDate,
      startTime,
      sessionRecording,
      const DeepCollectionEquality().hash(_sessionResources),
      description,
      sessionlink,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureImplCopyWith<_$StructureImpl> get copyWith =>
      __$$StructureImplCopyWithImpl<_$StructureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureImplToJson(
      this,
    );
  }
}

abstract class _Structure implements Structure {
  const factory _Structure(
      {final String? sessionTitle,
      final String? sessionDuration,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? startTime,
      final String? sessionRecording,
      final List<dynamic>? sessionResources,
      final String? description,
      final String? sessionlink,
      final String? id}) = _$StructureImpl;

  factory _Structure.fromJson(Map<String, dynamic> json) =
      _$StructureImpl.fromJson;

  @override
  String? get sessionTitle;
  @override
  String? get sessionDuration;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get startTime;
  @override
  String? get sessionRecording;
  @override
  List<dynamic>? get sessionResources;
  @override
  String? get description;
  @override
  String? get sessionlink;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$StructureImplCopyWith<_$StructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
