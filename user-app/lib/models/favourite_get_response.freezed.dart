// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouriteGetResponse _$FavouriteGetResponseFromJson(Map<String, dynamic> json) {
  return _FavouriteGetResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouriteGetResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  FavData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteGetResponseCopyWith<FavouriteGetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteGetResponseCopyWith<$Res> {
  factory $FavouriteGetResponseCopyWith(FavouriteGetResponse value,
          $Res Function(FavouriteGetResponse) then) =
      _$FavouriteGetResponseCopyWithImpl<$Res, FavouriteGetResponse>;
  @useResult
  $Res call({String? message, bool? status, FavData? data});

  $FavDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FavouriteGetResponseCopyWithImpl<$Res,
        $Val extends FavouriteGetResponse>
    implements $FavouriteGetResponseCopyWith<$Res> {
  _$FavouriteGetResponseCopyWithImpl(this._value, this._then);

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
              as FavData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FavDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouriteGetResponseImplCopyWith<$Res>
    implements $FavouriteGetResponseCopyWith<$Res> {
  factory _$$FavouriteGetResponseImplCopyWith(_$FavouriteGetResponseImpl value,
          $Res Function(_$FavouriteGetResponseImpl) then) =
      __$$FavouriteGetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, FavData? data});

  @override
  $FavDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FavouriteGetResponseImplCopyWithImpl<$Res>
    extends _$FavouriteGetResponseCopyWithImpl<$Res, _$FavouriteGetResponseImpl>
    implements _$$FavouriteGetResponseImplCopyWith<$Res> {
  __$$FavouriteGetResponseImplCopyWithImpl(_$FavouriteGetResponseImpl _value,
      $Res Function(_$FavouriteGetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FavouriteGetResponseImpl(
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
              as FavData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteGetResponseImpl implements _FavouriteGetResponse {
  const _$FavouriteGetResponseImpl({this.message, this.status, this.data});

  factory _$FavouriteGetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteGetResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final FavData? data;

  @override
  String toString() {
    return 'FavouriteGetResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteGetResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteGetResponseImplCopyWith<_$FavouriteGetResponseImpl>
      get copyWith =>
          __$$FavouriteGetResponseImplCopyWithImpl<_$FavouriteGetResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteGetResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouriteGetResponse implements FavouriteGetResponse {
  const factory _FavouriteGetResponse(
      {final String? message,
      final bool? status,
      final FavData? data}) = _$FavouriteGetResponseImpl;

  factory _FavouriteGetResponse.fromJson(Map<String, dynamic> json) =
      _$FavouriteGetResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  FavData? get data;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteGetResponseImplCopyWith<_$FavouriteGetResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FavData _$FavDataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$FavData {
  List<ProgramId>? get programId => throw _privateConstructorUsedError;
  List<WebinarId>? get webinarId => throw _privateConstructorUsedError;
  List<ExpertId>? get expertId => throw _privateConstructorUsedError;
  List<HealthPediaId>? get healthPediaId => throw _privateConstructorUsedError;
  List<VideohealthPediaId>? get videohealthPediaId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavDataCopyWith<FavData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavDataCopyWith<$Res> {
  factory $FavDataCopyWith(FavData value, $Res Function(FavData) then) =
      _$FavDataCopyWithImpl<$Res, FavData>;
  @useResult
  $Res call(
      {List<ProgramId>? programId,
      List<WebinarId>? webinarId,
      List<ExpertId>? expertId,
      List<HealthPediaId>? healthPediaId,
      List<VideohealthPediaId>? videohealthPediaId});
}

/// @nodoc
class _$FavDataCopyWithImpl<$Res, $Val extends FavData>
    implements $FavDataCopyWith<$Res> {
  _$FavDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? webinarId = freezed,
    Object? expertId = freezed,
    Object? healthPediaId = freezed,
    Object? videohealthPediaId = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as List<ProgramId>?,
      webinarId: freezed == webinarId
          ? _value.webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as List<WebinarId>?,
      expertId: freezed == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as List<ExpertId>?,
      healthPediaId: freezed == healthPediaId
          ? _value.healthPediaId
          : healthPediaId // ignore: cast_nullable_to_non_nullable
              as List<HealthPediaId>?,
      videohealthPediaId: freezed == videohealthPediaId
          ? _value.videohealthPediaId
          : videohealthPediaId // ignore: cast_nullable_to_non_nullable
              as List<VideohealthPediaId>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $FavDataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProgramId>? programId,
      List<WebinarId>? webinarId,
      List<ExpertId>? expertId,
      List<HealthPediaId>? healthPediaId,
      List<VideohealthPediaId>? videohealthPediaId});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$FavDataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? webinarId = freezed,
    Object? expertId = freezed,
    Object? healthPediaId = freezed,
    Object? videohealthPediaId = freezed,
  }) {
    return _then(_$DataImpl(
      programId: freezed == programId
          ? _value._programId
          : programId // ignore: cast_nullable_to_non_nullable
              as List<ProgramId>?,
      webinarId: freezed == webinarId
          ? _value._webinarId
          : webinarId // ignore: cast_nullable_to_non_nullable
              as List<WebinarId>?,
      expertId: freezed == expertId
          ? _value._expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as List<ExpertId>?,
      healthPediaId: freezed == healthPediaId
          ? _value._healthPediaId
          : healthPediaId // ignore: cast_nullable_to_non_nullable
              as List<HealthPediaId>?,
      videohealthPediaId: freezed == videohealthPediaId
          ? _value._videohealthPediaId
          : videohealthPediaId // ignore: cast_nullable_to_non_nullable
              as List<VideohealthPediaId>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {final List<ProgramId>? programId,
      final List<WebinarId>? webinarId,
      final List<ExpertId>? expertId,
      final List<HealthPediaId>? healthPediaId,
      final List<VideohealthPediaId>? videohealthPediaId})
      : _programId = programId,
        _webinarId = webinarId,
        _expertId = expertId,
        _healthPediaId = healthPediaId,
        _videohealthPediaId = videohealthPediaId;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<ProgramId>? _programId;
  @override
  List<ProgramId>? get programId {
    final value = _programId;
    if (value == null) return null;
    if (_programId is EqualUnmodifiableListView) return _programId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WebinarId>? _webinarId;
  @override
  List<WebinarId>? get webinarId {
    final value = _webinarId;
    if (value == null) return null;
    if (_webinarId is EqualUnmodifiableListView) return _webinarId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ExpertId>? _expertId;
  @override
  List<ExpertId>? get expertId {
    final value = _expertId;
    if (value == null) return null;
    if (_expertId is EqualUnmodifiableListView) return _expertId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HealthPediaId>? _healthPediaId;
  @override
  List<HealthPediaId>? get healthPediaId {
    final value = _healthPediaId;
    if (value == null) return null;
    if (_healthPediaId is EqualUnmodifiableListView) return _healthPediaId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VideohealthPediaId>? _videohealthPediaId;
  @override
  List<VideohealthPediaId>? get videohealthPediaId {
    final value = _videohealthPediaId;
    if (value == null) return null;
    if (_videohealthPediaId is EqualUnmodifiableListView)
      return _videohealthPediaId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavData(programId: $programId, webinarId: $webinarId, expertId: $expertId, healthPediaId: $healthPediaId, videohealthPediaId: $videohealthPediaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._programId, _programId) &&
            const DeepCollectionEquality()
                .equals(other._webinarId, _webinarId) &&
            const DeepCollectionEquality().equals(other._expertId, _expertId) &&
            const DeepCollectionEquality()
                .equals(other._healthPediaId, _healthPediaId) &&
            const DeepCollectionEquality()
                .equals(other._videohealthPediaId, _videohealthPediaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_programId),
      const DeepCollectionEquality().hash(_webinarId),
      const DeepCollectionEquality().hash(_expertId),
      const DeepCollectionEquality().hash(_healthPediaId),
      const DeepCollectionEquality().hash(_videohealthPediaId));

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

abstract class _Data implements FavData {
  const factory _Data(
      {final List<ProgramId>? programId,
      final List<WebinarId>? webinarId,
      final List<ExpertId>? expertId,
      final List<HealthPediaId>? healthPediaId,
      final List<VideohealthPediaId>? videohealthPediaId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<ProgramId>? get programId;
  @override
  List<WebinarId>? get webinarId;
  @override
  List<ExpertId>? get expertId;
  @override
  List<HealthPediaId>? get healthPediaId;
  @override
  List<VideohealthPediaId>? get videohealthPediaId;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpertId _$ExpertIdFromJson(Map<String, dynamic> json) {
  return _ExpertId.fromJson(json);
}

/// @nodoc
mixin _$ExpertId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get expertProfile => throw _privateConstructorUsedError;
  String? get expertCategory => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get qualification => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpertIdCopyWith<ExpertId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpertIdCopyWith<$Res> {
  factory $ExpertIdCopyWith(ExpertId value, $Res Function(ExpertId) then) =
      _$ExpertIdCopyWithImpl<$Res, ExpertId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? expertProfile,
      String? expertCategory,
      String? expertName,
      String? expertDesignation,
      String? qualification,
      String? language});
}

/// @nodoc
class _$ExpertIdCopyWithImpl<$Res, $Val extends ExpertId>
    implements $ExpertIdCopyWith<$Res> {
  _$ExpertIdCopyWithImpl(this._value, this._then);

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
    Object? qualification = freezed,
    Object? language = freezed,
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
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpertIdImplCopyWith<$Res>
    implements $ExpertIdCopyWith<$Res> {
  factory _$$ExpertIdImplCopyWith(
          _$ExpertIdImpl value, $Res Function(_$ExpertIdImpl) then) =
      __$$ExpertIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? expertProfile,
      String? expertCategory,
      String? expertName,
      String? expertDesignation,
      String? qualification,
      String? language});
}

/// @nodoc
class __$$ExpertIdImplCopyWithImpl<$Res>
    extends _$ExpertIdCopyWithImpl<$Res, _$ExpertIdImpl>
    implements _$$ExpertIdImplCopyWith<$Res> {
  __$$ExpertIdImplCopyWithImpl(
      _$ExpertIdImpl _value, $Res Function(_$ExpertIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? expertProfile = freezed,
    Object? expertCategory = freezed,
    Object? expertName = freezed,
    Object? expertDesignation = freezed,
    Object? qualification = freezed,
    Object? language = freezed,
  }) {
    return _then(_$ExpertIdImpl(
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
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpertIdImpl implements _ExpertId {
  const _$ExpertIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.expertProfile,
      this.expertCategory,
      this.expertName,
      this.expertDesignation,
      this.qualification,
      this.language});

  factory _$ExpertIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpertIdImplFromJson(json);

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
  final String? qualification;
  @override
  final String? language;

  @override
  String toString() {
    return 'ExpertId(id: $id, expertProfile: $expertProfile, expertCategory: $expertCategory, expertName: $expertName, expertDesignation: $expertDesignation, qualification: $qualification, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpertIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expertProfile, expertProfile) ||
                other.expertProfile == expertProfile) &&
            (identical(other.expertCategory, expertCategory) ||
                other.expertCategory == expertCategory) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, expertProfile,
      expertCategory, expertName, expertDesignation, qualification, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpertIdImplCopyWith<_$ExpertIdImpl> get copyWith =>
      __$$ExpertIdImplCopyWithImpl<_$ExpertIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpertIdImplToJson(
      this,
    );
  }
}

abstract class _ExpertId implements ExpertId {
  const factory _ExpertId(
      {@JsonKey(name: '_id') final String? id,
      final String? expertProfile,
      final String? expertCategory,
      final String? expertName,
      final String? expertDesignation,
      final String? qualification,
      final String? language}) = _$ExpertIdImpl;

  factory _ExpertId.fromJson(Map<String, dynamic> json) =
      _$ExpertIdImpl.fromJson;

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
  String? get qualification;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$ExpertIdImplCopyWith<_$ExpertIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthPediaId _$HealthPediaIdFromJson(Map<String, dynamic> json) {
  return _HealthPediaId.fromJson(json);
}

/// @nodoc
mixin _$HealthPediaId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get bannerImageUrl => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthPediaIdCopyWith<HealthPediaId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaIdCopyWith<$Res> {
  factory $HealthPediaIdCopyWith(
          HealthPediaId value, $Res Function(HealthPediaId) then) =
      _$HealthPediaIdCopyWithImpl<$Res, HealthPediaId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? category,
      String? bannerImageUrl,
      String? expertName,
      String? expertImageUrl});
}

/// @nodoc
class _$HealthPediaIdCopyWithImpl<$Res, $Val extends HealthPediaId>
    implements $HealthPediaIdCopyWith<$Res> {
  _$HealthPediaIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? bannerImageUrl = freezed,
    Object? expertName = freezed,
    Object? expertImageUrl = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImageUrl: freezed == expertImageUrl
          ? _value.expertImageUrl
          : expertImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthPediaIdImplCopyWith<$Res>
    implements $HealthPediaIdCopyWith<$Res> {
  factory _$$HealthPediaIdImplCopyWith(
          _$HealthPediaIdImpl value, $Res Function(_$HealthPediaIdImpl) then) =
      __$$HealthPediaIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? category,
      String? bannerImageUrl,
      String? expertName,
      String? expertImageUrl});
}

/// @nodoc
class __$$HealthPediaIdImplCopyWithImpl<$Res>
    extends _$HealthPediaIdCopyWithImpl<$Res, _$HealthPediaIdImpl>
    implements _$$HealthPediaIdImplCopyWith<$Res> {
  __$$HealthPediaIdImplCopyWithImpl(
      _$HealthPediaIdImpl _value, $Res Function(_$HealthPediaIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? category = freezed,
    Object? bannerImageUrl = freezed,
    Object? expertName = freezed,
    Object? expertImageUrl = freezed,
  }) {
    return _then(_$HealthPediaIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      expertName: freezed == expertName
          ? _value.expertName
          : expertName // ignore: cast_nullable_to_non_nullable
              as String?,
      expertImageUrl: freezed == expertImageUrl
          ? _value.expertImageUrl
          : expertImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthPediaIdImpl implements _HealthPediaId {
  const _$HealthPediaIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.category,
      this.bannerImageUrl,
      this.expertName,
      this.expertImageUrl});

  factory _$HealthPediaIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthPediaIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? category;
  @override
  final String? bannerImageUrl;
  @override
  final String? expertName;
  @override
  final String? expertImageUrl;

  @override
  String toString() {
    return 'HealthPediaId(id: $id, title: $title, category: $category, bannerImageUrl: $bannerImageUrl, expertName: $expertName, expertImageUrl: $expertImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthPediaIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                other.bannerImageUrl == bannerImageUrl) &&
            (identical(other.expertName, expertName) ||
                other.expertName == expertName) &&
            (identical(other.expertImageUrl, expertImageUrl) ||
                other.expertImageUrl == expertImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, category,
      bannerImageUrl, expertName, expertImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthPediaIdImplCopyWith<_$HealthPediaIdImpl> get copyWith =>
      __$$HealthPediaIdImplCopyWithImpl<_$HealthPediaIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthPediaIdImplToJson(
      this,
    );
  }
}

abstract class _HealthPediaId implements HealthPediaId {
  const factory _HealthPediaId(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? category,
      final String? bannerImageUrl,
      final String? expertName,
      final String? expertImageUrl}) = _$HealthPediaIdImpl;

  factory _HealthPediaId.fromJson(Map<String, dynamic> json) =
      _$HealthPediaIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get category;
  @override
  String? get bannerImageUrl;
  @override
  String? get expertName;
  @override
  String? get expertImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$HealthPediaIdImplCopyWith<_$HealthPediaIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramId _$ProgramIdFromJson(Map<String, dynamic> json) {
  return _ProgramId.fromJson(json);
}

/// @nodoc
mixin _$ProgramId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get programCategory => throw _privateConstructorUsedError;
  String? get fordeseases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramIdCopyWith<ProgramId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramIdCopyWith<$Res> {
  factory $ProgramIdCopyWith(ProgramId value, $Res Function(ProgramId) then) =
      _$ProgramIdCopyWithImpl<$Res, ProgramId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? imageUrl,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? programCategory,
      String? fordeseases});
}

/// @nodoc
class _$ProgramIdCopyWithImpl<$Res, $Val extends ProgramId>
    implements $ProgramIdCopyWith<$Res> {
  _$ProgramIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? programCategory = freezed,
    Object? fordeseases = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fordeseases: freezed == fordeseases
          ? _value.fordeseases
          : fordeseases // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramIdImplCopyWith<$Res>
    implements $ProgramIdCopyWith<$Res> {
  factory _$$ProgramIdImplCopyWith(
          _$ProgramIdImpl value, $Res Function(_$ProgramIdImpl) then) =
      __$$ProgramIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? title,
      String? imageUrl,
      String? expert,
      String? expertDesignation,
      String? expertImage,
      String? programCategory,
      String? fordeseases});
}

/// @nodoc
class __$$ProgramIdImplCopyWithImpl<$Res>
    extends _$ProgramIdCopyWithImpl<$Res, _$ProgramIdImpl>
    implements _$$ProgramIdImplCopyWith<$Res> {
  __$$ProgramIdImplCopyWithImpl(
      _$ProgramIdImpl _value, $Res Function(_$ProgramIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? expertDesignation = freezed,
    Object? expertImage = freezed,
    Object? programCategory = freezed,
    Object? fordeseases = freezed,
  }) {
    return _then(_$ProgramIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      programCategory: freezed == programCategory
          ? _value.programCategory
          : programCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      fordeseases: freezed == fordeseases
          ? _value.fordeseases
          : fordeseases // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramIdImpl implements _ProgramId {
  const _$ProgramIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.title,
      this.imageUrl,
      this.expert,
      this.expertDesignation,
      this.expertImage,
      this.programCategory,
      this.fordeseases});

  factory _$ProgramIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? expert;
  @override
  final String? expertDesignation;
  @override
  final String? expertImage;
  @override
  final String? programCategory;
  @override
  final String? fordeseases;

  @override
  String toString() {
    return 'ProgramId(id: $id, title: $title, imageUrl: $imageUrl, expert: $expert, expertDesignation: $expertDesignation, expertImage: $expertImage, programCategory: $programCategory, fordeseases: $fordeseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.expert, expert) || other.expert == expert) &&
            (identical(other.expertDesignation, expertDesignation) ||
                other.expertDesignation == expertDesignation) &&
            (identical(other.expertImage, expertImage) ||
                other.expertImage == expertImage) &&
            (identical(other.programCategory, programCategory) ||
                other.programCategory == programCategory) &&
            (identical(other.fordeseases, fordeseases) ||
                other.fordeseases == fordeseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl, expert,
      expertDesignation, expertImage, programCategory, fordeseases);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramIdImplCopyWith<_$ProgramIdImpl> get copyWith =>
      __$$ProgramIdImplCopyWithImpl<_$ProgramIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramIdImplToJson(
      this,
    );
  }
}

abstract class _ProgramId implements ProgramId {
  const factory _ProgramId(
      {@JsonKey(name: '_id') final String? id,
      final String? title,
      final String? imageUrl,
      final String? expert,
      final String? expertDesignation,
      final String? expertImage,
      final String? programCategory,
      final String? fordeseases}) = _$ProgramIdImpl;

  factory _ProgramId.fromJson(Map<String, dynamic> json) =
      _$ProgramIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get expert;
  @override
  String? get expertDesignation;
  @override
  String? get expertImage;
  @override
  String? get programCategory;
  @override
  String? get fordeseases;
  @override
  @JsonKey(ignore: true)
  _$$ProgramIdImplCopyWith<_$ProgramIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideohealthPediaId _$VideohealthPediaIdFromJson(Map<String, dynamic> json) {
  return _VideohealthPediaId.fromJson(json);
}

/// @nodoc
mixin _$VideohealthPediaId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get blogVideo => throw _privateConstructorUsedError;
  String? get blogthumbnail => throw _privateConstructorUsedError;
  String? get blogCategory => throw _privateConstructorUsedError;
  String? get blogTitle => throw _privateConstructorUsedError;
  String? get blogBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideohealthPediaIdCopyWith<VideohealthPediaId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideohealthPediaIdCopyWith<$Res> {
  factory $VideohealthPediaIdCopyWith(
          VideohealthPediaId value, $Res Function(VideohealthPediaId) then) =
      _$VideohealthPediaIdCopyWithImpl<$Res, VideohealthPediaId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? blogVideo,
      String? blogthumbnail,
      String? blogCategory,
      String? blogTitle,
      String? blogBy});
}

/// @nodoc
class _$VideohealthPediaIdCopyWithImpl<$Res, $Val extends VideohealthPediaId>
    implements $VideohealthPediaIdCopyWith<$Res> {
  _$VideohealthPediaIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? blogVideo = freezed,
    Object? blogthumbnail = freezed,
    Object? blogCategory = freezed,
    Object? blogTitle = freezed,
    Object? blogBy = freezed,
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
      blogthumbnail: freezed == blogthumbnail
          ? _value.blogthumbnail
          : blogthumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogBy: freezed == blogBy
          ? _value.blogBy
          : blogBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideohealthPediaIdImplCopyWith<$Res>
    implements $VideohealthPediaIdCopyWith<$Res> {
  factory _$$VideohealthPediaIdImplCopyWith(_$VideohealthPediaIdImpl value,
          $Res Function(_$VideohealthPediaIdImpl) then) =
      __$$VideohealthPediaIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? blogVideo,
      String? blogthumbnail,
      String? blogCategory,
      String? blogTitle,
      String? blogBy});
}

/// @nodoc
class __$$VideohealthPediaIdImplCopyWithImpl<$Res>
    extends _$VideohealthPediaIdCopyWithImpl<$Res, _$VideohealthPediaIdImpl>
    implements _$$VideohealthPediaIdImplCopyWith<$Res> {
  __$$VideohealthPediaIdImplCopyWithImpl(_$VideohealthPediaIdImpl _value,
      $Res Function(_$VideohealthPediaIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? blogVideo = freezed,
    Object? blogthumbnail = freezed,
    Object? blogCategory = freezed,
    Object? blogTitle = freezed,
    Object? blogBy = freezed,
  }) {
    return _then(_$VideohealthPediaIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      blogVideo: freezed == blogVideo
          ? _value.blogVideo
          : blogVideo // ignore: cast_nullable_to_non_nullable
              as String?,
      blogthumbnail: freezed == blogthumbnail
          ? _value.blogthumbnail
          : blogthumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      blogCategory: freezed == blogCategory
          ? _value.blogCategory
          : blogCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      blogTitle: freezed == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      blogBy: freezed == blogBy
          ? _value.blogBy
          : blogBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideohealthPediaIdImpl implements _VideohealthPediaId {
  const _$VideohealthPediaIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.blogVideo,
      this.blogthumbnail,
      this.blogCategory,
      this.blogTitle,
      this.blogBy});

  factory _$VideohealthPediaIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideohealthPediaIdImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? blogVideo;
  @override
  final String? blogthumbnail;
  @override
  final String? blogCategory;
  @override
  final String? blogTitle;
  @override
  final String? blogBy;

  @override
  String toString() {
    return 'VideohealthPediaId(id: $id, blogVideo: $blogVideo, blogthumbnail: $blogthumbnail, blogCategory: $blogCategory, blogTitle: $blogTitle, blogBy: $blogBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideohealthPediaIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.blogVideo, blogVideo) ||
                other.blogVideo == blogVideo) &&
            (identical(other.blogthumbnail, blogthumbnail) ||
                other.blogthumbnail == blogthumbnail) &&
            (identical(other.blogCategory, blogCategory) ||
                other.blogCategory == blogCategory) &&
            (identical(other.blogTitle, blogTitle) ||
                other.blogTitle == blogTitle) &&
            (identical(other.blogBy, blogBy) || other.blogBy == blogBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, blogVideo, blogthumbnail,
      blogCategory, blogTitle, blogBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideohealthPediaIdImplCopyWith<_$VideohealthPediaIdImpl> get copyWith =>
      __$$VideohealthPediaIdImplCopyWithImpl<_$VideohealthPediaIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideohealthPediaIdImplToJson(
      this,
    );
  }
}

abstract class _VideohealthPediaId implements VideohealthPediaId {
  const factory _VideohealthPediaId(
      {@JsonKey(name: '_id') final String? id,
      final String? blogVideo,
      final String? blogthumbnail,
      final String? blogCategory,
      final String? blogTitle,
      final String? blogBy}) = _$VideohealthPediaIdImpl;

  factory _VideohealthPediaId.fromJson(Map<String, dynamic> json) =
      _$VideohealthPediaIdImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get blogVideo;
  @override
  String? get blogthumbnail;
  @override
  String? get blogCategory;
  @override
  String? get blogTitle;
  @override
  String? get blogBy;
  @override
  @JsonKey(ignore: true)
  _$$VideohealthPediaIdImplCopyWith<_$VideohealthPediaIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebinarId _$WebinarIdFromJson(Map<String, dynamic> json) {
  return _WebinarId.fromJson(json);
}

/// @nodoc
mixin _$WebinarId {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get webinarCategory => throw _privateConstructorUsedError;
  String? get webinarTitle => throw _privateConstructorUsedError;
  String? get expertName => throw _privateConstructorUsedError;
  String? get expertImage => throw _privateConstructorUsedError;
  String? get expertDesignation => throw _privateConstructorUsedError;
  String? get webinarVideo => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get starttime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarIdCopyWith<WebinarId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarIdCopyWith<$Res> {
  factory $WebinarIdCopyWith(WebinarId value, $Res Function(WebinarId) then) =
      _$WebinarIdCopyWithImpl<$Res, WebinarId>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      String? webinarCategory,
      String? webinarTitle,
      String? expertName,
      String? expertImage,
      String? expertDesignation,
      String? webinarVideo,
      DateTime? date,
      String? day,
      String? starttime});
}

/// @nodoc
class _$WebinarIdCopyWithImpl<$Res, $Val extends WebinarId>
    implements $WebinarIdCopyWith<$Res> {
  _$WebinarIdCopyWithImpl(this._value, this._then);

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
    Object? webinarVideo = freezed,
    Object? date = freezed,
    Object? day = freezed,
    Object? starttime = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebinarIdImplCopyWith<$Res>
    implements $WebinarIdCopyWith<$Res> {
  factory _$$WebinarIdImplCopyWith(
          _$WebinarIdImpl value, $Res Function(_$WebinarIdImpl) then) =
      __$$WebinarIdImplCopyWithImpl<$Res>;
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
      String? webinarVideo,
      DateTime? date,
      String? day,
      String? starttime});
}

/// @nodoc
class __$$WebinarIdImplCopyWithImpl<$Res>
    extends _$WebinarIdCopyWithImpl<$Res, _$WebinarIdImpl>
    implements _$$WebinarIdImplCopyWith<$Res> {
  __$$WebinarIdImplCopyWithImpl(
      _$WebinarIdImpl _value, $Res Function(_$WebinarIdImpl) _then)
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
    Object? webinarVideo = freezed,
    Object? date = freezed,
    Object? day = freezed,
    Object? starttime = freezed,
  }) {
    return _then(_$WebinarIdImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarIdImpl implements _WebinarId {
  const _$WebinarIdImpl(
      {@JsonKey(name: '_id') this.id,
      this.image,
      this.webinarCategory,
      this.webinarTitle,
      this.expertName,
      this.expertImage,
      this.expertDesignation,
      this.webinarVideo,
      this.date,
      this.day,
      this.starttime});

  factory _$WebinarIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarIdImplFromJson(json);

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
  final String? webinarVideo;
  @override
  final DateTime? date;
  @override
  final String? day;
  @override
  final String? starttime;

  @override
  String toString() {
    return 'WebinarId(id: $id, image: $image, webinarCategory: $webinarCategory, webinarTitle: $webinarTitle, expertName: $expertName, expertImage: $expertImage, expertDesignation: $expertDesignation, webinarVideo: $webinarVideo, date: $date, day: $day, starttime: $starttime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarIdImpl &&
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
            (identical(other.webinarVideo, webinarVideo) ||
                other.webinarVideo == webinarVideo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      webinarCategory,
      webinarTitle,
      expertName,
      expertImage,
      expertDesignation,
      webinarVideo,
      date,
      day,
      starttime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarIdImplCopyWith<_$WebinarIdImpl> get copyWith =>
      __$$WebinarIdImplCopyWithImpl<_$WebinarIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarIdImplToJson(
      this,
    );
  }
}

abstract class _WebinarId implements WebinarId {
  const factory _WebinarId(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final String? webinarCategory,
      final String? webinarTitle,
      final String? expertName,
      final String? expertImage,
      final String? expertDesignation,
      final String? webinarVideo,
      final DateTime? date,
      final String? day,
      final String? starttime}) = _$WebinarIdImpl;

  factory _WebinarId.fromJson(Map<String, dynamic> json) =
      _$WebinarIdImpl.fromJson;

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
  String? get webinarVideo;
  @override
  DateTime? get date;
  @override
  String? get day;
  @override
  String? get starttime;
  @override
  @JsonKey(ignore: true)
  _$$WebinarIdImplCopyWith<_$WebinarIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
