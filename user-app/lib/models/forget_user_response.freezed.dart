// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgetUserResponse _$ForgetUserResponseFromJson(Map<String, dynamic> json) {
  return _ForgetUserResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgetUserResponse {
  String? get message => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgetUserResponseCopyWith<ForgetUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetUserResponseCopyWith<$Res> {
  factory $ForgetUserResponseCopyWith(
          ForgetUserResponse value, $Res Function(ForgetUserResponse) then) =
      _$ForgetUserResponseCopyWithImpl<$Res, ForgetUserResponse>;
  @useResult
  $Res call({String? message, String? userId});
}

/// @nodoc
class _$ForgetUserResponseCopyWithImpl<$Res, $Val extends ForgetUserResponse>
    implements $ForgetUserResponseCopyWith<$Res> {
  _$ForgetUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetUserResponseImplCopyWith<$Res>
    implements $ForgetUserResponseCopyWith<$Res> {
  factory _$$ForgetUserResponseImplCopyWith(_$ForgetUserResponseImpl value,
          $Res Function(_$ForgetUserResponseImpl) then) =
      __$$ForgetUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? userId});
}

/// @nodoc
class __$$ForgetUserResponseImplCopyWithImpl<$Res>
    extends _$ForgetUserResponseCopyWithImpl<$Res, _$ForgetUserResponseImpl>
    implements _$$ForgetUserResponseImplCopyWith<$Res> {
  __$$ForgetUserResponseImplCopyWithImpl(_$ForgetUserResponseImpl _value,
      $Res Function(_$ForgetUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ForgetUserResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgetUserResponseImpl implements _ForgetUserResponse {
  const _$ForgetUserResponseImpl({this.message, this.userId});

  factory _$ForgetUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgetUserResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final String? userId;

  @override
  String toString() {
    return 'ForgetUserResponse(message: $message, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetUserResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetUserResponseImplCopyWith<_$ForgetUserResponseImpl> get copyWith =>
      __$$ForgetUserResponseImplCopyWithImpl<_$ForgetUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgetUserResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgetUserResponse implements ForgetUserResponse {
  const factory _ForgetUserResponse(
      {final String? message, final String? userId}) = _$ForgetUserResponseImpl;

  factory _ForgetUserResponse.fromJson(Map<String, dynamic> json) =
      _$ForgetUserResponseImpl.fromJson;

  @override
  String? get message;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$ForgetUserResponseImplCopyWith<_$ForgetUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
