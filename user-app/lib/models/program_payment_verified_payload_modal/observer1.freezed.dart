// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observer1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Observer1 _$Observer1FromJson(Map<String, dynamic> json) {
  return _Observer1.fromJson(json);
}

/// @nodoc
mixin _$Observer1 {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get relation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Observer1CopyWith<Observer1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Observer1CopyWith<$Res> {
  factory $Observer1CopyWith(Observer1 value, $Res Function(Observer1) then) =
      _$Observer1CopyWithImpl<$Res, Observer1>;
  @useResult
  $Res call({String? fullName, String? phoneNumber, String? relation});
}

/// @nodoc
class _$Observer1CopyWithImpl<$Res, $Val extends Observer1>
    implements $Observer1CopyWith<$Res> {
  _$Observer1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? relation = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Observer1ImplCopyWith<$Res>
    implements $Observer1CopyWith<$Res> {
  factory _$$Observer1ImplCopyWith(
          _$Observer1Impl value, $Res Function(_$Observer1Impl) then) =
      __$$Observer1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, String? phoneNumber, String? relation});
}

/// @nodoc
class __$$Observer1ImplCopyWithImpl<$Res>
    extends _$Observer1CopyWithImpl<$Res, _$Observer1Impl>
    implements _$$Observer1ImplCopyWith<$Res> {
  __$$Observer1ImplCopyWithImpl(
      _$Observer1Impl _value, $Res Function(_$Observer1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? relation = freezed,
  }) {
    return _then(_$Observer1Impl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Observer1Impl implements _Observer1 {
  _$Observer1Impl({this.fullName, this.phoneNumber, this.relation});

  factory _$Observer1Impl.fromJson(Map<String, dynamic> json) =>
      _$$Observer1ImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? phoneNumber;
  @override
  final String? relation;

  @override
  String toString() {
    return 'Observer1(fullName: $fullName, phoneNumber: $phoneNumber, relation: $relation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Observer1Impl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relation, relation) ||
                other.relation == relation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phoneNumber, relation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Observer1ImplCopyWith<_$Observer1Impl> get copyWith =>
      __$$Observer1ImplCopyWithImpl<_$Observer1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Observer1ImplToJson(
      this,
    );
  }
}

abstract class _Observer1 implements Observer1 {
  factory _Observer1(
      {final String? fullName,
      final String? phoneNumber,
      final String? relation}) = _$Observer1Impl;

  factory _Observer1.fromJson(Map<String, dynamic> json) =
      _$Observer1Impl.fromJson;

  @override
  String? get fullName;
  @override
  String? get phoneNumber;
  @override
  String? get relation;
  @override
  @JsonKey(ignore: true)
  _$$Observer1ImplCopyWith<_$Observer1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
