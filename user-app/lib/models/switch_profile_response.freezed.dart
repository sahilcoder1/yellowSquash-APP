// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwitchProfileResponse _$SwitchProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _SwitchProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$SwitchProfileResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<SwitchProfileData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchProfileResponseCopyWith<SwitchProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchProfileResponseCopyWith<$Res> {
  factory $SwitchProfileResponseCopyWith(SwitchProfileResponse value,
          $Res Function(SwitchProfileResponse) then) =
      _$SwitchProfileResponseCopyWithImpl<$Res, SwitchProfileResponse>;
  @useResult
  $Res call({String? message, bool? status, List<SwitchProfileData>? data});
}

/// @nodoc
class _$SwitchProfileResponseCopyWithImpl<$Res,
        $Val extends SwitchProfileResponse>
    implements $SwitchProfileResponseCopyWith<$Res> {
  _$SwitchProfileResponseCopyWithImpl(this._value, this._then);

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
              as List<SwitchProfileData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwitchProfileResponseImplCopyWith<$Res>
    implements $SwitchProfileResponseCopyWith<$Res> {
  factory _$$SwitchProfileResponseImplCopyWith(
          _$SwitchProfileResponseImpl value,
          $Res Function(_$SwitchProfileResponseImpl) then) =
      __$$SwitchProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, List<SwitchProfileData>? data});
}

/// @nodoc
class __$$SwitchProfileResponseImplCopyWithImpl<$Res>
    extends _$SwitchProfileResponseCopyWithImpl<$Res,
        _$SwitchProfileResponseImpl>
    implements _$$SwitchProfileResponseImplCopyWith<$Res> {
  __$$SwitchProfileResponseImplCopyWithImpl(_$SwitchProfileResponseImpl _value,
      $Res Function(_$SwitchProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SwitchProfileResponseImpl(
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
              as List<SwitchProfileData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwitchProfileResponseImpl implements _SwitchProfileResponse {
  const _$SwitchProfileResponseImpl(
      {this.message, this.status, final List<SwitchProfileData>? data})
      : _data = data;

  factory _$SwitchProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwitchProfileResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  final List<SwitchProfileData>? _data;
  @override
  List<SwitchProfileData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SwitchProfileResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchProfileResponseImpl &&
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
  _$$SwitchProfileResponseImplCopyWith<_$SwitchProfileResponseImpl>
      get copyWith => __$$SwitchProfileResponseImplCopyWithImpl<
          _$SwitchProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwitchProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _SwitchProfileResponse implements SwitchProfileResponse {
  const factory _SwitchProfileResponse(
      {final String? message,
      final bool? status,
      final List<SwitchProfileData>? data}) = _$SwitchProfileResponseImpl;

  factory _SwitchProfileResponse.fromJson(Map<String, dynamic> json) =
      _$SwitchProfileResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<SwitchProfileData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SwitchProfileResponseImplCopyWith<_$SwitchProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SwitchProfileData _$SwitchProfileDataFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$SwitchProfileData {
  String? get fullname =>
      throw _privateConstructorUsedError; // dynamic nickName,
  String? get profileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchProfileDataCopyWith<SwitchProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchProfileDataCopyWith<$Res> {
  factory $SwitchProfileDataCopyWith(
          SwitchProfileData value, $Res Function(SwitchProfileData) then) =
      _$SwitchProfileDataCopyWithImpl<$Res, SwitchProfileData>;
  @useResult
  $Res call({String? fullname, String? profileId});
}

/// @nodoc
class _$SwitchProfileDataCopyWithImpl<$Res, $Val extends SwitchProfileData>
    implements $SwitchProfileDataCopyWith<$Res> {
  _$SwitchProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? profileId = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res>
    implements $SwitchProfileDataCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullname, String? profileId});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$SwitchProfileDataCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = freezed,
    Object? profileId = freezed,
  }) {
    return _then(_$DatumImpl(
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl({this.fullname, this.profileId});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? fullname;
// dynamic nickName,
  @override
  final String? profileId;

  @override
  String toString() {
    return 'SwitchProfileData(fullname: $fullname, profileId: $profileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullname, profileId);

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

abstract class _Datum implements SwitchProfileData {
  const factory _Datum({final String? fullname, final String? profileId}) =
      _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get fullname;
  @override // dynamic nickName,
  String? get profileId;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
