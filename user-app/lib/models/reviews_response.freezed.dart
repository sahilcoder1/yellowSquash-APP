// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsResponse _$ReviewsResponseFromJson(Map<String, dynamic> json) {
  return _ReviewsResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewsResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  ProrgramReviewData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsResponseCopyWith<ReviewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsResponseCopyWith<$Res> {
  factory $ReviewsResponseCopyWith(
          ReviewsResponse value, $Res Function(ReviewsResponse) then) =
      _$ReviewsResponseCopyWithImpl<$Res, ReviewsResponse>;
  @useResult
  $Res call({String? message, bool? status, ProrgramReviewData? data});

  $ProrgramReviewDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReviewsResponseCopyWithImpl<$Res, $Val extends ReviewsResponse>
    implements $ReviewsResponseCopyWith<$Res> {
  _$ReviewsResponseCopyWithImpl(this._value, this._then);

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
              as ProrgramReviewData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProrgramReviewDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProrgramReviewDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewsResponseImplCopyWith<$Res>
    implements $ReviewsResponseCopyWith<$Res> {
  factory _$$ReviewsResponseImplCopyWith(_$ReviewsResponseImpl value,
          $Res Function(_$ReviewsResponseImpl) then) =
      __$$ReviewsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, ProrgramReviewData? data});

  @override
  $ProrgramReviewDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ReviewsResponseImplCopyWithImpl<$Res>
    extends _$ReviewsResponseCopyWithImpl<$Res, _$ReviewsResponseImpl>
    implements _$$ReviewsResponseImplCopyWith<$Res> {
  __$$ReviewsResponseImplCopyWithImpl(
      _$ReviewsResponseImpl _value, $Res Function(_$ReviewsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ReviewsResponseImpl(
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
              as ProrgramReviewData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewsResponseImpl implements _ReviewsResponse {
  const _$ReviewsResponseImpl({this.message, this.status, this.data});

  factory _$ReviewsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewsResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final ProrgramReviewData? data;

  @override
  String toString() {
    return 'ReviewsResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsResponseImpl &&
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
  _$$ReviewsResponseImplCopyWith<_$ReviewsResponseImpl> get copyWith =>
      __$$ReviewsResponseImplCopyWithImpl<_$ReviewsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewsResponseImplToJson(
      this,
    );
  }
}

abstract class _ReviewsResponse implements ReviewsResponse {
  const factory _ReviewsResponse(
      {final String? message,
      final bool? status,
      final ProrgramReviewData? data}) = _$ReviewsResponseImpl;

  factory _ReviewsResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewsResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  ProrgramReviewData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsResponseImplCopyWith<_$ReviewsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProrgramReviewData _$ProrgramReviewDataFromJson(Map<String, dynamic> json) {
  return _ProrgramReviewData.fromJson(json);
}

/// @nodoc
mixin _$ProrgramReviewData {
  List<ProgramReview>? get programReview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProrgramReviewDataCopyWith<ProrgramReviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProrgramReviewDataCopyWith<$Res> {
  factory $ProrgramReviewDataCopyWith(
          ProrgramReviewData value, $Res Function(ProrgramReviewData) then) =
      _$ProrgramReviewDataCopyWithImpl<$Res, ProrgramReviewData>;
  @useResult
  $Res call({List<ProgramReview>? programReview});
}

/// @nodoc
class _$ProrgramReviewDataCopyWithImpl<$Res, $Val extends ProrgramReviewData>
    implements $ProrgramReviewDataCopyWith<$Res> {
  _$ProrgramReviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programReview = freezed,
  }) {
    return _then(_value.copyWith(
      programReview: freezed == programReview
          ? _value.programReview
          : programReview // ignore: cast_nullable_to_non_nullable
              as List<ProgramReview>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProrgramReviewDataImplCopyWith<$Res>
    implements $ProrgramReviewDataCopyWith<$Res> {
  factory _$$ProrgramReviewDataImplCopyWith(_$ProrgramReviewDataImpl value,
          $Res Function(_$ProrgramReviewDataImpl) then) =
      __$$ProrgramReviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProgramReview>? programReview});
}

/// @nodoc
class __$$ProrgramReviewDataImplCopyWithImpl<$Res>
    extends _$ProrgramReviewDataCopyWithImpl<$Res, _$ProrgramReviewDataImpl>
    implements _$$ProrgramReviewDataImplCopyWith<$Res> {
  __$$ProrgramReviewDataImplCopyWithImpl(_$ProrgramReviewDataImpl _value,
      $Res Function(_$ProrgramReviewDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programReview = freezed,
  }) {
    return _then(_$ProrgramReviewDataImpl(
      programReview: freezed == programReview
          ? _value._programReview
          : programReview // ignore: cast_nullable_to_non_nullable
              as List<ProgramReview>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProrgramReviewDataImpl implements _ProrgramReviewData {
  const _$ProrgramReviewDataImpl({final List<ProgramReview>? programReview})
      : _programReview = programReview;

  factory _$ProrgramReviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProrgramReviewDataImplFromJson(json);

  final List<ProgramReview>? _programReview;
  @override
  List<ProgramReview>? get programReview {
    final value = _programReview;
    if (value == null) return null;
    if (_programReview is EqualUnmodifiableListView) return _programReview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProrgramReviewData(programReview: $programReview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProrgramReviewDataImpl &&
            const DeepCollectionEquality()
                .equals(other._programReview, _programReview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_programReview));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProrgramReviewDataImplCopyWith<_$ProrgramReviewDataImpl> get copyWith =>
      __$$ProrgramReviewDataImplCopyWithImpl<_$ProrgramReviewDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProrgramReviewDataImplToJson(
      this,
    );
  }
}

abstract class _ProrgramReviewData implements ProrgramReviewData {
  const factory _ProrgramReviewData(
      {final List<ProgramReview>? programReview}) = _$ProrgramReviewDataImpl;

  factory _ProrgramReviewData.fromJson(Map<String, dynamic> json) =
      _$ProrgramReviewDataImpl.fromJson;

  @override
  List<ProgramReview>? get programReview;
  @override
  @JsonKey(ignore: true)
  _$$ProrgramReviewDataImplCopyWith<_$ProrgramReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramReview _$ProgramReviewFromJson(Map<String, dynamic> json) {
  return _ProgramReview.fromJson(json);
}

/// @nodoc
mixin _$ProgramReview {
  String? get comment => throw _privateConstructorUsedError;
  String? get commentPhoto => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramReviewCopyWith<ProgramReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramReviewCopyWith<$Res> {
  factory $ProgramReviewCopyWith(
          ProgramReview value, $Res Function(ProgramReview) then) =
      _$ProgramReviewCopyWithImpl<$Res, ProgramReview>;
  @useResult
  $Res call({String? comment, String? commentPhoto, String? id});
}

/// @nodoc
class _$ProgramReviewCopyWithImpl<$Res, $Val extends ProgramReview>
    implements $ProgramReviewCopyWith<$Res> {
  _$ProgramReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? commentPhoto = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentPhoto: freezed == commentPhoto
          ? _value.commentPhoto
          : commentPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramReviewImplCopyWith<$Res>
    implements $ProgramReviewCopyWith<$Res> {
  factory _$$ProgramReviewImplCopyWith(
          _$ProgramReviewImpl value, $Res Function(_$ProgramReviewImpl) then) =
      __$$ProgramReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? comment, String? commentPhoto, String? id});
}

/// @nodoc
class __$$ProgramReviewImplCopyWithImpl<$Res>
    extends _$ProgramReviewCopyWithImpl<$Res, _$ProgramReviewImpl>
    implements _$$ProgramReviewImplCopyWith<$Res> {
  __$$ProgramReviewImplCopyWithImpl(
      _$ProgramReviewImpl _value, $Res Function(_$ProgramReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? commentPhoto = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ProgramReviewImpl(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      commentPhoto: freezed == commentPhoto
          ? _value.commentPhoto
          : commentPhoto // ignore: cast_nullable_to_non_nullable
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
class _$ProgramReviewImpl implements _ProgramReview {
  const _$ProgramReviewImpl({this.comment, this.commentPhoto, this.id});

  factory _$ProgramReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramReviewImplFromJson(json);

  @override
  final String? comment;
  @override
  final String? commentPhoto;
  @override
  final String? id;

  @override
  String toString() {
    return 'ProgramReview(comment: $comment, commentPhoto: $commentPhoto, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramReviewImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentPhoto, commentPhoto) ||
                other.commentPhoto == commentPhoto) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, commentPhoto, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramReviewImplCopyWith<_$ProgramReviewImpl> get copyWith =>
      __$$ProgramReviewImplCopyWithImpl<_$ProgramReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramReviewImplToJson(
      this,
    );
  }
}

abstract class _ProgramReview implements ProgramReview {
  const factory _ProgramReview(
      {final String? comment,
      final String? commentPhoto,
      final String? id}) = _$ProgramReviewImpl;

  factory _ProgramReview.fromJson(Map<String, dynamic> json) =
      _$ProgramReviewImpl.fromJson;

  @override
  String? get comment;
  @override
  String? get commentPhoto;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ProgramReviewImplCopyWith<_$ProgramReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
