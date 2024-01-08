// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_program_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpcomingProgramResponse _$UpcomingProgramResponseFromJson(
    Map<String, dynamic> json) {
  return _UpcomingProgramResponse.fromJson(json);
}

/// @nodoc
mixin _$UpcomingProgramResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UpcomingProgramData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingProgramResponseCopyWith<UpcomingProgramResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingProgramResponseCopyWith<$Res> {
  factory $UpcomingProgramResponseCopyWith(UpcomingProgramResponse value,
          $Res Function(UpcomingProgramResponse) then) =
      _$UpcomingProgramResponseCopyWithImpl<$Res, UpcomingProgramResponse>;
  @useResult
  $Res call({bool? status, String? message, List<UpcomingProgramData>? data});
}

/// @nodoc
class _$UpcomingProgramResponseCopyWithImpl<$Res,
        $Val extends UpcomingProgramResponse>
    implements $UpcomingProgramResponseCopyWith<$Res> {
  _$UpcomingProgramResponseCopyWithImpl(this._value, this._then);

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
              as List<UpcomingProgramData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingProgramResponseImplCopyWith<$Res>
    implements $UpcomingProgramResponseCopyWith<$Res> {
  factory _$$UpcomingProgramResponseImplCopyWith(
          _$UpcomingProgramResponseImpl value,
          $Res Function(_$UpcomingProgramResponseImpl) then) =
      __$$UpcomingProgramResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, List<UpcomingProgramData>? data});
}

/// @nodoc
class __$$UpcomingProgramResponseImplCopyWithImpl<$Res>
    extends _$UpcomingProgramResponseCopyWithImpl<$Res,
        _$UpcomingProgramResponseImpl>
    implements _$$UpcomingProgramResponseImplCopyWith<$Res> {
  __$$UpcomingProgramResponseImplCopyWithImpl(
      _$UpcomingProgramResponseImpl _value,
      $Res Function(_$UpcomingProgramResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpcomingProgramResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingProgramResponseImpl implements _UpcomingProgramResponse {
  const _$UpcomingProgramResponseImpl(
      {this.status, this.message, final List<UpcomingProgramData>? data})
      : _data = data;

  factory _$UpcomingProgramResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingProgramResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'UpcomingProgramResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingProgramResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingProgramResponseImplCopyWith<_$UpcomingProgramResponseImpl>
      get copyWith => __$$UpcomingProgramResponseImplCopyWithImpl<
          _$UpcomingProgramResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingProgramResponseImplToJson(
      this,
    );
  }
}

abstract class _UpcomingProgramResponse implements UpcomingProgramResponse {
  const factory _UpcomingProgramResponse(
      {final bool? status,
      final String? message,
      final List<UpcomingProgramData>? data}) = _$UpcomingProgramResponseImpl;

  factory _UpcomingProgramResponse.fromJson(Map<String, dynamic> json) =
      _$UpcomingProgramResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<UpcomingProgramData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingProgramResponseImplCopyWith<_$UpcomingProgramResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpcomingProgramData _$UpcomingProgramDataFromJson(Map<String, dynamic> json) {
  return _UpcomingProgramData.fromJson(json);
}

/// @nodoc
mixin _$UpcomingProgramData {
  String? get programId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get expert => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;

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
      {String? programId,
      String? title,
      String? imageUrl,
      String? expert,
      String? startDate});
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
    Object? programId = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingProgramDataImplCopyWith<$Res>
    implements $UpcomingProgramDataCopyWith<$Res> {
  factory _$$UpcomingProgramDataImplCopyWith(_$UpcomingProgramDataImpl value,
          $Res Function(_$UpcomingProgramDataImpl) then) =
      __$$UpcomingProgramDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? programId,
      String? title,
      String? imageUrl,
      String? expert,
      String? startDate});
}

/// @nodoc
class __$$UpcomingProgramDataImplCopyWithImpl<$Res>
    extends _$UpcomingProgramDataCopyWithImpl<$Res, _$UpcomingProgramDataImpl>
    implements _$$UpcomingProgramDataImplCopyWith<$Res> {
  __$$UpcomingProgramDataImplCopyWithImpl(_$UpcomingProgramDataImpl _value,
      $Res Function(_$UpcomingProgramDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? programId = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? expert = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_$UpcomingProgramDataImpl(
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingProgramDataImpl implements _UpcomingProgramData {
  const _$UpcomingProgramDataImpl(
      {this.programId, this.title, this.imageUrl, this.expert, this.startDate});

  factory _$UpcomingProgramDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingProgramDataImplFromJson(json);

  @override
  final String? programId;
  @override
  final String? title;
  @override
  final String? imageUrl;
  @override
  final String? expert;
  @override
  final String? startDate;

  @override
  String toString() {
    return 'UpcomingProgramData(programId: $programId, title: $title, imageUrl: $imageUrl, expert: $expert, startDate: $startDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingProgramDataImpl &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.expert, expert) || other.expert == expert) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, programId, title, imageUrl, expert, startDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingProgramDataImplCopyWith<_$UpcomingProgramDataImpl> get copyWith =>
      __$$UpcomingProgramDataImplCopyWithImpl<_$UpcomingProgramDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingProgramDataImplToJson(
      this,
    );
  }
}

abstract class _UpcomingProgramData implements UpcomingProgramData {
  const factory _UpcomingProgramData(
      {final String? programId,
      final String? title,
      final String? imageUrl,
      final String? expert,
      final String? startDate}) = _$UpcomingProgramDataImpl;

  factory _UpcomingProgramData.fromJson(Map<String, dynamic> json) =
      _$UpcomingProgramDataImpl.fromJson;

  @override
  String? get programId;
  @override
  String? get title;
  @override
  String? get imageUrl;
  @override
  String? get expert;
  @override
  String? get startDate;
  @override
  @JsonKey(ignore: true)
  _$$UpcomingProgramDataImplCopyWith<_$UpcomingProgramDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
