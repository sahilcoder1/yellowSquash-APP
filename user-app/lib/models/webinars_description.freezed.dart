// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinars_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebinarsDescription _$WebinarsDescriptionFromJson(Map<String, dynamic> json) {
  return _WebinarsDescription.fromJson(json);
}

/// @nodoc
mixin _$WebinarsDescription {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  WebinarDescriptionData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarsDescriptionCopyWith<WebinarsDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarsDescriptionCopyWith<$Res> {
  factory $WebinarsDescriptionCopyWith(
          WebinarsDescription value, $Res Function(WebinarsDescription) then) =
      _$WebinarsDescriptionCopyWithImpl<$Res, WebinarsDescription>;
  @useResult
  $Res call({bool? status, String? message, WebinarDescriptionData? data});

  $WebinarDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WebinarsDescriptionCopyWithImpl<$Res, $Val extends WebinarsDescription>
    implements $WebinarsDescriptionCopyWith<$Res> {
  _$WebinarsDescriptionCopyWithImpl(this._value, this._then);

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
              as WebinarDescriptionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WebinarDescriptionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WebinarDescriptionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebinarsDescriptionImplCopyWith<$Res>
    implements $WebinarsDescriptionCopyWith<$Res> {
  factory _$$WebinarsDescriptionImplCopyWith(_$WebinarsDescriptionImpl value,
          $Res Function(_$WebinarsDescriptionImpl) then) =
      __$$WebinarsDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, WebinarDescriptionData? data});

  @override
  $WebinarDescriptionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WebinarsDescriptionImplCopyWithImpl<$Res>
    extends _$WebinarsDescriptionCopyWithImpl<$Res, _$WebinarsDescriptionImpl>
    implements _$$WebinarsDescriptionImplCopyWith<$Res> {
  __$$WebinarsDescriptionImplCopyWithImpl(_$WebinarsDescriptionImpl _value,
      $Res Function(_$WebinarsDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WebinarsDescriptionImpl(
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
              as WebinarDescriptionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarsDescriptionImpl implements _WebinarsDescription {
  const _$WebinarsDescriptionImpl({this.status, this.message, this.data});

  factory _$WebinarsDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarsDescriptionImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final WebinarDescriptionData? data;

  @override
  String toString() {
    return 'WebinarsDescription(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarsDescriptionImpl &&
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
  _$$WebinarsDescriptionImplCopyWith<_$WebinarsDescriptionImpl> get copyWith =>
      __$$WebinarsDescriptionImplCopyWithImpl<_$WebinarsDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarsDescriptionImplToJson(
      this,
    );
  }
}

abstract class _WebinarsDescription implements WebinarsDescription {
  const factory _WebinarsDescription(
      {final bool? status,
      final String? message,
      final WebinarDescriptionData? data}) = _$WebinarsDescriptionImpl;

  factory _WebinarsDescription.fromJson(Map<String, dynamic> json) =
      _$WebinarsDescriptionImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  WebinarDescriptionData? get data;
  @override
  @JsonKey(ignore: true)
  _$$WebinarsDescriptionImplCopyWith<_$WebinarsDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebinarDescriptionData _$WebinarDescriptionDataFromJson(
    Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$WebinarDescriptionData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get webinarCategory => throw _privateConstructorUsedError;
  String? get webinarTitle => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertCategory => throw _privateConstructorUsedError;
  String? get expertDescription => throw _privateConstructorUsedError;
  String? get webinarVideo => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get sessionDurationinHour => throw _privateConstructorUsedError;
  String? get starttime => throw _privateConstructorUsedError;
  String? get endtime => throw _privateConstructorUsedError;
  String? get webinarDescription => throw _privateConstructorUsedError;
  List<SessionwillCover>? get sessionwillCover =>
      throw _privateConstructorUsedError;
  List<String>? get youwillLearn => throw _privateConstructorUsedError;
  List<String>? get whoisitFor => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get latestWhatsappLink => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarDescriptionDataCopyWith<WebinarDescriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarDescriptionDataCopyWith<$Res> {
  factory $WebinarDescriptionDataCopyWith(WebinarDescriptionData value,
          $Res Function(WebinarDescriptionData) then) =
      _$WebinarDescriptionDataCopyWithImpl<$Res, WebinarDescriptionData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      String? webinarCategory,
      String? webinarTitle,
      String? expertName,
      String? expertImage,
      String? expertDesignation,
      String? expertCategory,
      String? expertDescription,
      String? webinarVideo,
      DateTime? date,
      String? day,
      String? sessionDurationinHour,
      String? starttime,
      String? endtime,
      String? webinarDescription,
      List<SessionwillCover>? sessionwillCover,
      List<String>? youwillLearn,
      List<String>? whoisitFor,
      int? price,
      String? latestWhatsappLink,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      bool? isDeleted,
      bool? status});
}

/// @nodoc
class _$WebinarDescriptionDataCopyWithImpl<$Res,
        $Val extends WebinarDescriptionData>
    implements $WebinarDescriptionDataCopyWith<$Res> {
  _$WebinarDescriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? webinarCategory = freezed,
    Object? webinarTitle = freezed,
    Object? expertName = freezed,
    Object? expertImage = freezed,
    Object? expertDesignation = freezed,
    Object? expertCategory = freezed,
    Object? expertDescription = freezed,
    Object? webinarVideo = freezed,
    Object? date = freezed,
    Object? day = freezed,
    Object? sessionDurationinHour = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? webinarDescription = freezed,
    Object? sessionwillCover = freezed,
    Object? youwillLearn = freezed,
    Object? whoisitFor = freezed,
    Object? price = freezed,
    Object? latestWhatsappLink = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarCategory: freezed == webinarCategory
          ? _value.webinarCategory
          : webinarCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarTitle: freezed == webinarTitle
          ? _value.webinarTitle
          : webinarTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertCategory: freezed == expertCategory
          ? _value.expertCategory
          : expertCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarVideo: freezed == webinarVideo
          ? _value.webinarVideo
          : webinarVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDurationinHour: freezed == sessionDurationinHour
          ? _value.sessionDurationinHour
          : sessionDurationinHour // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarDescription: freezed == webinarDescription
          ? _value.webinarDescription
          : webinarDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionwillCover: freezed == sessionwillCover
          ? _value.sessionwillCover
          : sessionwillCover // ignore: cast_nullable_to_non_nullable
              as List<SessionwillCover>?,
      youwillLearn: freezed == youwillLearn
          ? _value.youwillLearn
          : youwillLearn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whoisitFor: freezed == whoisitFor
          ? _value.whoisitFor
          : whoisitFor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      latestWhatsappLink: freezed == latestWhatsappLink
          ? _value.latestWhatsappLink
          : latestWhatsappLink // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $WebinarDescriptionDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      String? webinarCategory,
      String? webinarTitle,
      String? expertName,
      String? expertImage,
      String? expertDesignation,
      String? expertCategory,
      String? expertDescription,
      String? webinarVideo,
      DateTime? date,
      String? day,
      String? sessionDurationinHour,
      String? starttime,
      String? endtime,
      String? webinarDescription,
      List<SessionwillCover>? sessionwillCover,
      List<String>? youwillLearn,
      List<String>? whoisitFor,
      int? price,
      String? latestWhatsappLink,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      bool? isDeleted,
      bool? status});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$WebinarDescriptionDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? webinarCategory = freezed,
    Object? webinarTitle = freezed,
    Object? expertName = freezed,
    Object? expertImage = freezed,
    Object? expertDesignation = freezed,
    Object? expertCategory = freezed,
    Object? expertDescription = freezed,
    Object? webinarVideo = freezed,
    Object? date = freezed,
    Object? day = freezed,
    Object? sessionDurationinHour = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? webinarDescription = freezed,
    Object? sessionwillCover = freezed,
    Object? youwillLearn = freezed,
    Object? whoisitFor = freezed,
    Object? price = freezed,
    Object? latestWhatsappLink = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarCategory: freezed == webinarCategory
          ? _value.webinarCategory
          : webinarCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarTitle: freezed == webinarTitle
          ? _value.webinarTitle
          : webinarTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImage: freezed == expertImage
          ? _value.expertImage
          : expertImage // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDesignation: freezed == expertDesignation
          ? _value.expertDesignation
          : expertDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      expertCategory: freezed == expertCategory
          ? _value.expertCategory
          : expertCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      expertDescription: freezed == expertDescription
          ? _value.expertDescription
          : expertDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarVideo: freezed == webinarVideo
          ? _value.webinarVideo
          : webinarVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionDurationinHour: freezed == sessionDurationinHour
          ? _value.sessionDurationinHour
          : sessionDurationinHour // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      webinarDescription: freezed == webinarDescription
          ? _value.webinarDescription
          : webinarDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionwillCover: freezed == sessionwillCover
          ? _value._sessionwillCover
          : sessionwillCover // ignore: cast_nullable_to_non_nullable
              as List<SessionwillCover>?,
      youwillLearn: freezed == youwillLearn
          ? _value._youwillLearn
          : youwillLearn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whoisitFor: freezed == whoisitFor
          ? _value._whoisitFor
          : whoisitFor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      latestWhatsappLink: freezed == latestWhatsappLink
          ? _value.latestWhatsappLink
          : latestWhatsappLink // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: '_id') this.id,
      this.image,
      this.webinarCategory,
      this.webinarTitle,
      this.expertName,
      this.expertImage,
      this.expertDesignation,
      this.expertCategory,
      this.expertDescription,
      this.webinarVideo,
      this.date,
      this.day,
      this.sessionDurationinHour,
      this.starttime,
      this.endtime,
      this.webinarDescription,
      final List<SessionwillCover>? sessionwillCover,
      final List<String>? youwillLearn,
      final List<String>? whoisitFor,
      this.price,
      this.latestWhatsappLink,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.isDeleted,
      this.status})
      : _sessionwillCover = sessionwillCover,
        _youwillLearn = youwillLearn,
        _whoisitFor = whoisitFor;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final String? webinarCategory;
  @override
  final String? webinarTitle;
  @override
  final String? expertName;
  @override
  final String? expertImage;
  @override
  final String? expertDesignation;
  @override
  final String? expertCategory;
  @override
  final String? expertDescription;
  @override
  final String? webinarVideo;
  @override
  final DateTime? date;
  @override
  final String? day;
  @override
  final String? sessionDurationinHour;
  @override
  final String? starttime;
  @override
  final String? endtime;
  @override
  final String? webinarDescription;
  final List<SessionwillCover>? _sessionwillCover;
  @override
  List<SessionwillCover>? get sessionwillCover {
    final value = _sessionwillCover;
    if (value == null) return null;
    if (_sessionwillCover is EqualUnmodifiableListView)
      return _sessionwillCover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _youwillLearn;
  @override
  List<String>? get youwillLearn {
    final value = _youwillLearn;
    if (value == null) return null;
    if (_youwillLearn is EqualUnmodifiableListView) return _youwillLearn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _whoisitFor;
  @override
  List<String>? get whoisitFor {
    final value = _whoisitFor;
    if (value == null) return null;
    if (_whoisitFor is EqualUnmodifiableListView) return _whoisitFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? price;
  @override
  final String? latestWhatsappLink;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final bool? isDeleted;
  @override
  final bool? status;

  @override
  String toString() {
    return 'WebinarDescriptionData(id: $id, image: $image, webinarCategory: $webinarCategory, webinarTitle: $webinarTitle, expertName: $expertName, expertImage: $expertImage, expertDesignation: $expertDesignation, expertCategory: $expertCategory, expertDescription: $expertDescription, webinarVideo: $webinarVideo, date: $date, day: $day, sessionDurationinHour: $sessionDurationinHour, starttime: $starttime, endtime: $endtime, webinarDescription: $webinarDescription, sessionwillCover: $sessionwillCover, youwillLearn: $youwillLearn, whoisitFor: $whoisitFor, price: $price, latestWhatsappLink: $latestWhatsappLink, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, isDeleted: $isDeleted, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.webinarCategory, webinarCategory) ||
                other.webinarCategory == webinarCategory) &&
            (identical(other.webinarTitle, webinarTitle) ||
                other.webinarTitle == webinarTitle) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.expertImage, expertImage) ||
                other.expertImage == expertImage) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.expertCategory, expertCategory) ||
                other.expertCategory == expertCategory) &&
            (identical(other.expertDescription, expertDescription) ||
                other.expertDescription == expertDescription) &&
            (identical(other.webinarVideo, webinarVideo) ||
                other.webinarVideo == webinarVideo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.sessionDurationinHour, sessionDurationinHour) ||
                other.sessionDurationinHour == sessionDurationinHour) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.webinarDescription, webinarDescription) ||
                other.webinarDescription == webinarDescription) &&
            const DeepCollectionEquality()
                .equals(other._sessionwillCover, _sessionwillCover) &&
            const DeepCollectionEquality()
                .equals(other._youwillLearn, _youwillLearn) &&
            const DeepCollectionEquality()
                .equals(other._whoisitFor, _whoisitFor) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.latestWhatsappLink, latestWhatsappLink) ||
                other.latestWhatsappLink == latestWhatsappLink) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        webinarCategory,
        webinarTitle,
        expertName,
        expertImage,
        expertDesignation,
        expertCategory,
        expertDescription,
        webinarVideo,
        date,
        day,
        sessionDurationinHour,
        starttime,
        endtime,
        webinarDescription,
        const DeepCollectionEquality().hash(_sessionwillCover),
        const DeepCollectionEquality().hash(_youwillLearn),
        const DeepCollectionEquality().hash(_whoisitFor),
        price,
        latestWhatsappLink,
        createdAt,
        updatedAt,
        v,
        isDeleted,
        status
      ]);

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

abstract class _Data implements WebinarDescriptionData {
  const factory _Data(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final String? webinarCategory,
      final String? webinarTitle,
      final String? expertName,
      final String? expertImage,
      final String? expertDesignation,
      final String? expertCategory,
      final String? expertDescription,
      final String? webinarVideo,
      final DateTime? date,
      final String? day,
      final String? sessionDurationinHour,
      final String? starttime,
      final String? endtime,
      final String? webinarDescription,
      final List<SessionwillCover>? sessionwillCover,
      final List<String>? youwillLearn,
      final List<String>? whoisitFor,
      final int? price,
      final String? latestWhatsappLink,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final bool? isDeleted,
      final bool? status}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  String? get webinarCategory;
  @override
  String? get webinarTitle;
  @override
  String? get expertName;
  @override
  String? get expertImage;
  @override
  String? get expertDesignation;
  @override
  String? get expertCategory;
  @override
  String? get expertDescription;
  @override
  String? get webinarVideo;
  @override
  DateTime? get date;
  @override
  String? get day;
  @override
  String? get sessionDurationinHour;
  @override
  String? get starttime;
  @override
  String? get endtime;
  @override
  String? get webinarDescription;
  @override
  List<SessionwillCover>? get sessionwillCover;
  @override
  List<String>? get youwillLearn;
  @override
  List<String>? get whoisitFor;
  @override
  int? get price;
  @override
  String? get latestWhatsappLink;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  bool? get isDeleted;
  @override
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionwillCover _$SessionwillCoverFromJson(Map<String, dynamic> json) {
  return _SessionwillCover.fromJson(json);
}

/// @nodoc
mixin _$SessionwillCover {
  String? get heading => throw _privateConstructorUsedError;
  String? get defination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionwillCoverCopyWith<SessionwillCover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionwillCoverCopyWith<$Res> {
  factory $SessionwillCoverCopyWith(
          SessionwillCover value, $Res Function(SessionwillCover) then) =
      _$SessionwillCoverCopyWithImpl<$Res, SessionwillCover>;
  @useResult
  $Res call({String? heading, String? defination});
}

/// @nodoc
class _$SessionwillCoverCopyWithImpl<$Res, $Val extends SessionwillCover>
    implements $SessionwillCoverCopyWith<$Res> {
  _$SessionwillCoverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? defination = freezed,
  }) {
    return _then(_value.copyWith(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      defination: freezed == defination
          ? _value.defination
          : defination // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionwillCoverImplCopyWith<$Res>
    implements $SessionwillCoverCopyWith<$Res> {
  factory _$$SessionwillCoverImplCopyWith(_$SessionwillCoverImpl value,
          $Res Function(_$SessionwillCoverImpl) then) =
      __$$SessionwillCoverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? heading, String? defination});
}

/// @nodoc
class __$$SessionwillCoverImplCopyWithImpl<$Res>
    extends _$SessionwillCoverCopyWithImpl<$Res, _$SessionwillCoverImpl>
    implements _$$SessionwillCoverImplCopyWith<$Res> {
  __$$SessionwillCoverImplCopyWithImpl(_$SessionwillCoverImpl _value,
      $Res Function(_$SessionwillCoverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heading = freezed,
    Object? defination = freezed,
  }) {
    return _then(_$SessionwillCoverImpl(
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String?,
      defination: freezed == defination
          ? _value.defination
          : defination // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionwillCoverImpl implements _SessionwillCover {
  const _$SessionwillCoverImpl({this.heading, this.defination});

  factory _$SessionwillCoverImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionwillCoverImplFromJson(json);

  @override
  final String? heading;
  @override
  final String? defination;

  @override
  String toString() {
    return 'SessionwillCover(heading: $heading, defination: $defination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionwillCoverImpl &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.defination, defination) ||
                other.defination == defination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, heading, defination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionwillCoverImplCopyWith<_$SessionwillCoverImpl> get copyWith =>
      __$$SessionwillCoverImplCopyWithImpl<_$SessionwillCoverImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionwillCoverImplToJson(
      this,
    );
  }
}

abstract class _SessionwillCover implements SessionwillCover {
  const factory _SessionwillCover(
      {final String? heading,
      final String? defination}) = _$SessionwillCoverImpl;

  factory _SessionwillCover.fromJson(Map<String, dynamic> json) =
      _$SessionwillCoverImpl.fromJson;

  @override
  String? get heading;
  @override
  String? get defination;
  @override
  @JsonKey(ignore: true)
  _$$SessionwillCoverImplCopyWith<_$SessionwillCoverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
