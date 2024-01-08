// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentGetResponse _$CommentGetResponseFromJson(Map<String, dynamic> json) {
  return _CommentGetResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentGetResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<String>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentGetResponseCopyWith<CommentGetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentGetResponseCopyWith<$Res> {
  factory $CommentGetResponseCopyWith(
          CommentGetResponse value, $Res Function(CommentGetResponse) then) =
      _$CommentGetResponseCopyWithImpl<$Res, CommentGetResponse>;
  @useResult
  $Res call({String? message, bool? status, List<String>? data});
}

/// @nodoc
class _$CommentGetResponseCopyWithImpl<$Res, $Val extends CommentGetResponse>
    implements $CommentGetResponseCopyWith<$Res> {
  _$CommentGetResponseCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentGetResponseImplCopyWith<$Res>
    implements $CommentGetResponseCopyWith<$Res> {
  factory _$$CommentGetResponseImplCopyWith(_$CommentGetResponseImpl value,
          $Res Function(_$CommentGetResponseImpl) then) =
      __$$CommentGetResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, List<String>? data});
}

/// @nodoc
class __$$CommentGetResponseImplCopyWithImpl<$Res>
    extends _$CommentGetResponseCopyWithImpl<$Res, _$CommentGetResponseImpl>
    implements _$$CommentGetResponseImplCopyWith<$Res> {
  __$$CommentGetResponseImplCopyWithImpl(_$CommentGetResponseImpl _value,
      $Res Function(_$CommentGetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CommentGetResponseImpl(
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
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentGetResponseImpl implements _CommentGetResponse {
  const _$CommentGetResponseImpl(
      {this.message, this.status, final List<String>? data})
      : _data = data;

  factory _$CommentGetResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentGetResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  final List<String>? _data;
  @override
  List<String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentGetResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentGetResponseImpl &&
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
  _$$CommentGetResponseImplCopyWith<_$CommentGetResponseImpl> get copyWith =>
      __$$CommentGetResponseImplCopyWithImpl<_$CommentGetResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentGetResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentGetResponse implements CommentGetResponse {
  const factory _CommentGetResponse(
      {final String? message,
      final bool? status,
      final List<String>? data}) = _$CommentGetResponseImpl;

  factory _CommentGetResponse.fromJson(Map<String, dynamic> json) =
      _$CommentGetResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<String>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CommentGetResponseImplCopyWith<_$CommentGetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
