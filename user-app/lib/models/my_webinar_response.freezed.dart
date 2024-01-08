// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_webinar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyWebinarResponse _$MyWebinarResponseFromJson(Map<String, dynamic> json) {
  return _MyWebinarResponse.fromJson(json);
}

/// @nodoc
mixin _$MyWebinarResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<MyWebinarData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyWebinarResponseCopyWith<MyWebinarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWebinarResponseCopyWith<$Res> {
  factory $MyWebinarResponseCopyWith(
          MyWebinarResponse value, $Res Function(MyWebinarResponse) then) =
      _$MyWebinarResponseCopyWithImpl<$Res, MyWebinarResponse>;
  @useResult
  $Res call({String? message, bool? status, List<MyWebinarData>? data});
}

/// @nodoc
class _$MyWebinarResponseCopyWithImpl<$Res, $Val extends MyWebinarResponse>
    implements $MyWebinarResponseCopyWith<$Res> {
  _$MyWebinarResponseCopyWithImpl(this._value, this._then);

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
              as List<MyWebinarData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyWebinarResponseImplCopyWith<$Res>
    implements $MyWebinarResponseCopyWith<$Res> {
  factory _$$MyWebinarResponseImplCopyWith(_$MyWebinarResponseImpl value,
          $Res Function(_$MyWebinarResponseImpl) then) =
      __$$MyWebinarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, List<MyWebinarData>? data});
}

/// @nodoc
class __$$MyWebinarResponseImplCopyWithImpl<$Res>
    extends _$MyWebinarResponseCopyWithImpl<$Res, _$MyWebinarResponseImpl>
    implements _$$MyWebinarResponseImplCopyWith<$Res> {
  __$$MyWebinarResponseImplCopyWithImpl(_$MyWebinarResponseImpl _value,
      $Res Function(_$MyWebinarResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyWebinarResponseImpl(
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
              as List<MyWebinarData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyWebinarResponseImpl implements _MyWebinarResponse {
  const _$MyWebinarResponseImpl(
      {this.message, this.status, final List<MyWebinarData>? data})
      : _data = data;

  factory _$MyWebinarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyWebinarResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  final List<MyWebinarData>? _data;
  @override
  List<MyWebinarData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyWebinarResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyWebinarResponseImpl &&
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
  _$$MyWebinarResponseImplCopyWith<_$MyWebinarResponseImpl> get copyWith =>
      __$$MyWebinarResponseImplCopyWithImpl<_$MyWebinarResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyWebinarResponseImplToJson(
      this,
    );
  }
}

abstract class _MyWebinarResponse implements MyWebinarResponse {
  const factory _MyWebinarResponse(
      {final String? message,
      final bool? status,
      final List<MyWebinarData>? data}) = _$MyWebinarResponseImpl;

  factory _MyWebinarResponse.fromJson(Map<String, dynamic> json) =
      _$MyWebinarResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<MyWebinarData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyWebinarResponseImplCopyWith<_$MyWebinarResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MyWebinarData _$MyWebinarDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$MyWebinarData {
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
  String? get starttime => throw _privateConstructorUsedError;
  String? get endtime => throw _privateConstructorUsedError;
  String? get webinarDescription =>
      throw _privateConstructorUsedError; // String? sessionwillCover,
  List<String>? get youwillLearn => throw _privateConstructorUsedError;
  List<String>? get whoisitFor => throw _privateConstructorUsedError;
  String? get experienceImage => throw _privateConstructorUsedError;
  String? get experienceName => throw _privateConstructorUsedError;
  String? get experienceDescription => throw _privateConstructorUsedError;
  String? get experienceVideo => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyWebinarDataCopyWith<MyWebinarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyWebinarDataCopyWith<$Res> {
  factory $MyWebinarDataCopyWith(
          MyWebinarData value, $Res Function(MyWebinarData) then) =
      _$MyWebinarDataCopyWithImpl<$Res, MyWebinarData>;
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
      String? starttime,
      String? endtime,
      String? webinarDescription,
      List<String>? youwillLearn,
      List<String>? whoisitFor,
      String? experienceImage,
      String? experienceName,
      String? experienceDescription,
      String? experienceVideo,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      int? price});
}

/// @nodoc
class _$MyWebinarDataCopyWithImpl<$Res, $Val extends MyWebinarData>
    implements $MyWebinarDataCopyWith<$Res> {
  _$MyWebinarDataCopyWithImpl(this._value, this._then);

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
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? webinarDescription = freezed,
    Object? youwillLearn = freezed,
    Object? whoisitFor = freezed,
    Object? experienceImage = freezed,
    Object? experienceName = freezed,
    Object? experienceDescription = freezed,
    Object? experienceVideo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? price = freezed,
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
      youwillLearn: freezed == youwillLearn
          ? _value.youwillLearn
          : youwillLearn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whoisitFor: freezed == whoisitFor
          ? _value.whoisitFor
          : whoisitFor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experienceImage: freezed == experienceImage
          ? _value.experienceImage
          : experienceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceName: freezed == experienceName
          ? _value.experienceName
          : experienceName // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceDescription: freezed == experienceDescription
          ? _value.experienceDescription
          : experienceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceVideo: freezed == experienceVideo
          ? _value.experienceVideo
          : experienceVideo // ignore: cast_nullable_to_non_nullable
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $MyWebinarDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
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
      String? starttime,
      String? endtime,
      String? webinarDescription,
      List<String>? youwillLearn,
      List<String>? whoisitFor,
      String? experienceImage,
      String? experienceName,
      String? experienceDescription,
      String? experienceVideo,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? v,
      int? price});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$MyWebinarDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
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
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? webinarDescription = freezed,
    Object? youwillLearn = freezed,
    Object? whoisitFor = freezed,
    Object? experienceImage = freezed,
    Object? experienceName = freezed,
    Object? experienceDescription = freezed,
    Object? experienceVideo = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? price = freezed,
  }) {
    return _then(_$DatumImpl(
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
      youwillLearn: freezed == youwillLearn
          ? _value._youwillLearn
          : youwillLearn // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whoisitFor: freezed == whoisitFor
          ? _value._whoisitFor
          : whoisitFor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      experienceImage: freezed == experienceImage
          ? _value.experienceImage
          : experienceImage // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceName: freezed == experienceName
          ? _value.experienceName
          : experienceName // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceDescription: freezed == experienceDescription
          ? _value.experienceDescription
          : experienceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceVideo: freezed == experienceVideo
          ? _value.experienceVideo
          : experienceVideo // ignore: cast_nullable_to_non_nullable
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
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
      this.starttime,
      this.endtime,
      this.webinarDescription,
      final List<String>? youwillLearn,
      final List<String>? whoisitFor,
      this.experienceImage,
      this.experienceName,
      this.experienceDescription,
      this.experienceVideo,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.price})
      : _youwillLearn = youwillLearn,
        _whoisitFor = whoisitFor;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

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
  final String? starttime;
  @override
  final String? endtime;
  @override
  final String? webinarDescription;
// String? sessionwillCover,
  final List<String>? _youwillLearn;
// String? sessionwillCover,
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
  final String? experienceImage;
  @override
  final String? experienceName;
  @override
  final String? experienceDescription;
  @override
  final String? experienceVideo;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? v;
  @override
  final int? price;

  @override
  String toString() {
    return 'MyWebinarData(id: $id, image: $image, webinarCategory: $webinarCategory, webinarTitle: $webinarTitle, expertName: $expertName, expertImage: $expertImage, expertDesignation: $expertDesignation, expertCategory: $expertCategory, expertDescription: $expertDescription, webinarVideo: $webinarVideo, date: $date, day: $day, starttime: $starttime, endtime: $endtime, webinarDescription: $webinarDescription, youwillLearn: $youwillLearn, whoisitFor: $whoisitFor, experienceImage: $experienceImage, experienceName: $experienceName, experienceDescription: $experienceDescription, experienceVideo: $experienceVideo, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
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
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.webinarDescription, webinarDescription) ||
                other.webinarDescription == webinarDescription) &&
            const DeepCollectionEquality()
                .equals(other._youwillLearn, _youwillLearn) &&
            const DeepCollectionEquality()
                .equals(other._whoisitFor, _whoisitFor) &&
            (identical(other.experienceImage, experienceImage) ||
                other.experienceImage == experienceImage) &&
            (identical(other.experienceName, experienceName) ||
                other.experienceName == experienceName) &&
            (identical(other.experienceDescription, experienceDescription) ||
                other.experienceDescription == experienceDescription) &&
            (identical(other.experienceVideo, experienceVideo) ||
                other.experienceVideo == experienceVideo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.price, price) || other.price == price));
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
        starttime,
        endtime,
        webinarDescription,
        const DeepCollectionEquality().hash(_youwillLearn),
        const DeepCollectionEquality().hash(_whoisitFor),
        experienceImage,
        experienceName,
        experienceDescription,
        experienceVideo,
        createdAt,
        updatedAt,
        v,
        price
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

abstract class _Datum implements MyWebinarData {
  const factory _Datum(
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
      final String? starttime,
      final String? endtime,
      final String? webinarDescription,
      final List<String>? youwillLearn,
      final List<String>? whoisitFor,
      final String? experienceImage,
      final String? experienceName,
      final String? experienceDescription,
      final String? experienceVideo,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? v,
      final int? price}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

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
  String? get starttime;
  @override
  String? get endtime;
  @override
  String? get webinarDescription;
  @override // String? sessionwillCover,
  List<String>? get youwillLearn;
  @override
  List<String>? get whoisitFor;
  @override
  String? get experienceImage;
  @override
  String? get experienceName;
  @override
  String? get experienceDescription;
  @override
  String? get experienceVideo;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get v;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
