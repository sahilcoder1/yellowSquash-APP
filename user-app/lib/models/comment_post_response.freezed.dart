// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentPostResponse _$CommentPostResponseFromJson(Map<String, dynamic> json) {
  return _CommentPostResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentPostResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentPostResponseCopyWith<CommentPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPostResponseCopyWith<$Res> {
  factory $CommentPostResponseCopyWith(
          CommentPostResponse value, $Res Function(CommentPostResponse) then) =
      _$CommentPostResponseCopyWithImpl<$Res, CommentPostResponse>;
  @useResult
  $Res call({bool? status, String? message});
}

/// @nodoc
class _$CommentPostResponseCopyWithImpl<$Res, $Val extends CommentPostResponse>
    implements $CommentPostResponseCopyWith<$Res> {
  _$CommentPostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentPostResponseImplCopyWith<$Res>
    implements $CommentPostResponseCopyWith<$Res> {
  factory _$$CommentPostResponseImplCopyWith(_$CommentPostResponseImpl value,
          $Res Function(_$CommentPostResponseImpl) then) =
      __$$CommentPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message});
}

/// @nodoc
class __$$CommentPostResponseImplCopyWithImpl<$Res>
    extends _$CommentPostResponseCopyWithImpl<$Res, _$CommentPostResponseImpl>
    implements _$$CommentPostResponseImplCopyWith<$Res> {
  __$$CommentPostResponseImplCopyWithImpl(_$CommentPostResponseImpl _value,
      $Res Function(_$CommentPostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CommentPostResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentPostResponseImpl implements _CommentPostResponse {
  const _$CommentPostResponseImpl({this.status, this.message});

  factory _$CommentPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentPostResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CommentPostResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPostResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPostResponseImplCopyWith<_$CommentPostResponseImpl> get copyWith =>
      __$$CommentPostResponseImplCopyWithImpl<_$CommentPostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentPostResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentPostResponse implements CommentPostResponse {
  const factory _CommentPostResponse(
      {final bool? status, final String? message}) = _$CommentPostResponseImpl;

  factory _CommentPostResponse.fromJson(Map<String, dynamic> json) =
      _$CommentPostResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CommentPostResponseImplCopyWith<_$CommentPostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
