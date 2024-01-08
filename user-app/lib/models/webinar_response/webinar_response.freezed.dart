// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'webinar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebinarResponse _$WebinarResponseFromJson(Map<String, dynamic> json) {
  return _WebinarResponse.fromJson(json);
}

/// @nodoc
mixin _$WebinarResponse {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<WebinarData>? get data => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebinarResponseCopyWith<WebinarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebinarResponseCopyWith<$Res> {
  factory $WebinarResponseCopyWith(
          WebinarResponse value, $Res Function(WebinarResponse) then) =
      _$WebinarResponseCopyWithImpl<$Res, WebinarResponse>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<WebinarData>? data,
      List<String>? category});
}

/// @nodoc
class _$WebinarResponseCopyWithImpl<$Res, $Val extends WebinarResponse>
    implements $WebinarResponseCopyWith<$Res> {
  _$WebinarResponseCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
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
              as List<WebinarData>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebinarResponseImplCopyWith<$Res>
    implements $WebinarResponseCopyWith<$Res> {
  factory _$$WebinarResponseImplCopyWith(_$WebinarResponseImpl value,
          $Res Function(_$WebinarResponseImpl) then) =
      __$$WebinarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      List<WebinarData>? data,
      List<String>? category});
}

/// @nodoc
class __$$WebinarResponseImplCopyWithImpl<$Res>
    extends _$WebinarResponseCopyWithImpl<$Res, _$WebinarResponseImpl>
    implements _$$WebinarResponseImplCopyWith<$Res> {
  __$$WebinarResponseImplCopyWithImpl(
      _$WebinarResponseImpl _value, $Res Function(_$WebinarResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? category = freezed,
  }) {
    return _then(_$WebinarResponseImpl(
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
              as List<WebinarData>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebinarResponseImpl implements _WebinarResponse {
  _$WebinarResponseImpl(
      {this.status,
      this.message,
      final List<WebinarData>? data,
      final List<String>? category})
      : _data = data,
        _category = category;

  factory _$WebinarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebinarResponseImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  final List<WebinarData>? _data;
  @override
  List<WebinarData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WebinarResponse(status: $status, message: $message, data: $data, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebinarResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebinarResponseImplCopyWith<_$WebinarResponseImpl> get copyWith =>
      __$$WebinarResponseImplCopyWithImpl<_$WebinarResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebinarResponseImplToJson(
      this,
    );
  }
}

abstract class _WebinarResponse implements WebinarResponse {
  factory _WebinarResponse(
      {final bool? status,
      final String? message,
      final List<WebinarData>? data,
      final List<String>? category}) = _$WebinarResponseImpl;

  factory _WebinarResponse.fromJson(Map<String, dynamic> json) =
      _$WebinarResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  List<WebinarData>? get data;
  @override
  List<String>? get category;
  @override
  @JsonKey(ignore: true)
  _$$WebinarResponseImplCopyWith<_$WebinarResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
