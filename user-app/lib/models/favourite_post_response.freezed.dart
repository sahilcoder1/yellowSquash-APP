// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouritePostResponse _$FavouritePostResponseFromJson(
    Map<String, dynamic> json) {
  return _FavouritePostResponse.fromJson(json);
}

/// @nodoc
mixin _$FavouritePostResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouritePostResponseCopyWith<FavouritePostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritePostResponseCopyWith<$Res> {
  factory $FavouritePostResponseCopyWith(FavouritePostResponse value,
          $Res Function(FavouritePostResponse) then) =
      _$FavouritePostResponseCopyWithImpl<$Res, FavouritePostResponse>;
  @useResult
  $Res call({bool? status, String? message});
}

/// @nodoc
class _$FavouritePostResponseCopyWithImpl<$Res,
        $Val extends FavouritePostResponse>
    implements $FavouritePostResponseCopyWith<$Res> {
  _$FavouritePostResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$FavouritePostResponseImplCopyWith<$Res>
    implements $FavouritePostResponseCopyWith<$Res> {
  factory _$$FavouritePostResponseImplCopyWith(
          _$FavouritePostResponseImpl value,
          $Res Function(_$FavouritePostResponseImpl) then) =
      __$$FavouritePostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message});
}

/// @nodoc
class __$$FavouritePostResponseImplCopyWithImpl<$Res>
    extends _$FavouritePostResponseCopyWithImpl<$Res,
        _$FavouritePostResponseImpl>
    implements _$$FavouritePostResponseImplCopyWith<$Res> {
  __$$FavouritePostResponseImplCopyWithImpl(_$FavouritePostResponseImpl _value,
      $Res Function(_$FavouritePostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FavouritePostResponseImpl(
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
class _$FavouritePostResponseImpl implements _FavouritePostResponse {
  const _$FavouritePostResponseImpl({this.status, this.message});

  factory _$FavouritePostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouritePostResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'FavouritePostResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritePostResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritePostResponseImplCopyWith<_$FavouritePostResponseImpl>
      get copyWith => __$$FavouritePostResponseImplCopyWithImpl<
          _$FavouritePostResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouritePostResponseImplToJson(
      this,
    );
  }
}

abstract class _FavouritePostResponse implements FavouritePostResponse {
  const factory _FavouritePostResponse(
      {final bool? status,
      final String? message}) = _$FavouritePostResponseImpl;

  factory _FavouritePostResponse.fromJson(Map<String, dynamic> json) =
      _$FavouritePostResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FavouritePostResponseImplCopyWith<_$FavouritePostResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
