// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'observer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Observer _$ObserverFromJson(Map<String, dynamic> json) {
  return _Observer.fromJson(json);
}

/// @nodoc
mixin _$Observer {
  Observer1? get observer1 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObserverCopyWith<Observer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObserverCopyWith<$Res> {
  factory $ObserverCopyWith(Observer value, $Res Function(Observer) then) =
      _$ObserverCopyWithImpl<$Res, Observer>;
  @useResult
  $Res call({Observer1? observer1});

  $Observer1CopyWith<$Res>? get observer1;
}

/// @nodoc
class _$ObserverCopyWithImpl<$Res, $Val extends Observer>
    implements $ObserverCopyWith<$Res> {
  _$ObserverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observer1 = freezed,
  }) {
    return _then(_value.copyWith(
      observer1: freezed == observer1
          ? _value.observer1
          : observer1 // ignore: cast_nullable_to_non_nullable
              as Observer1?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $Observer1CopyWith<$Res>? get observer1 {
    if (_value.observer1 == null) {
      return null;
    }

    return $Observer1CopyWith<$Res>(_value.observer1!, (value) {
      return _then(_value.copyWith(observer1: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ObserverImplCopyWith<$Res>
    implements $ObserverCopyWith<$Res> {
  factory _$$ObserverImplCopyWith(
          _$ObserverImpl value, $Res Function(_$ObserverImpl) then) =
      __$$ObserverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Observer1? observer1});

  @override
  $Observer1CopyWith<$Res>? get observer1;
}

/// @nodoc
class __$$ObserverImplCopyWithImpl<$Res>
    extends _$ObserverCopyWithImpl<$Res, _$ObserverImpl>
    implements _$$ObserverImplCopyWith<$Res> {
  __$$ObserverImplCopyWithImpl(
      _$ObserverImpl _value, $Res Function(_$ObserverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observer1 = freezed,
  }) {
    return _then(_$ObserverImpl(
      observer1: freezed == observer1
          ? _value.observer1
          : observer1 // ignore: cast_nullable_to_non_nullable
              as Observer1?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ObserverImpl implements _Observer {
  _$ObserverImpl({this.observer1});

  factory _$ObserverImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObserverImplFromJson(json);

  @override
  final Observer1? observer1;

  @override
  String toString() {
    return 'Observer(observer1: $observer1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObserverImpl &&
            (identical(other.observer1, observer1) ||
                other.observer1 == observer1));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, observer1);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObserverImplCopyWith<_$ObserverImpl> get copyWith =>
      __$$ObserverImplCopyWithImpl<_$ObserverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ObserverImplToJson(
      this,
    );
  }
}

abstract class _Observer implements Observer {
  factory _Observer({final Observer1? observer1}) = _$ObserverImpl;

  factory _Observer.fromJson(Map<String, dynamic> json) =
      _$ObserverImpl.fromJson;

  @override
  Observer1? get observer1;
  @override
  @JsonKey(ignore: true)
  _$$ObserverImplCopyWith<_$ObserverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
