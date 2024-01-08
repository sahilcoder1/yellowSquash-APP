// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_pedia_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HealthPediaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(
            List<HealthPediaData> healthData, List<String> category)
        healthLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(healthLoaded value) healthLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(healthLoaded value)? healthLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(healthLoaded value)? healthLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthPediaStateCopyWith<$Res> {
  factory $HealthPediaStateCopyWith(
          HealthPediaState value, $Res Function(HealthPediaState) then) =
      _$HealthPediaStateCopyWithImpl<$Res, HealthPediaState>;
}

/// @nodoc
class _$HealthPediaStateCopyWithImpl<$Res, $Val extends HealthPediaState>
    implements $HealthPediaStateCopyWith<$Res> {
  _$HealthPediaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HealthPediaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HealthPediaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(
            List<HealthPediaData> healthData, List<String> category)
        healthLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(healthLoaded value) healthLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(healthLoaded value)? healthLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(healthLoaded value)? healthLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HealthPediaState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HealthPediaStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HealthPediaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(
            List<HealthPediaData> healthData, List<String> category)
        healthLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(healthLoaded value) healthLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(healthLoaded value)? healthLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(healthLoaded value)? healthLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HealthPediaState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$HealthPediaStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'HealthPediaState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(
            List<HealthPediaData> healthData, List<String> category)
        healthLoaded,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(healthLoaded value) healthLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(healthLoaded value)? healthLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(healthLoaded value)? healthLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements HealthPediaState {
  const factory ErrorState(final String e) = _$ErrorStateImpl;

  String get e;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$healthLoadedImplCopyWith<$Res> {
  factory _$$healthLoadedImplCopyWith(
          _$healthLoadedImpl value, $Res Function(_$healthLoadedImpl) then) =
      __$$healthLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HealthPediaData> healthData, List<String> category});
}

/// @nodoc
class __$$healthLoadedImplCopyWithImpl<$Res>
    extends _$HealthPediaStateCopyWithImpl<$Res, _$healthLoadedImpl>
    implements _$$healthLoadedImplCopyWith<$Res> {
  __$$healthLoadedImplCopyWithImpl(
      _$healthLoadedImpl _value, $Res Function(_$healthLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthData = null,
    Object? category = null,
  }) {
    return _then(_$healthLoadedImpl(
      healthData: null == healthData
          ? _value._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthPediaData>,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$healthLoadedImpl implements healthLoaded {
  const _$healthLoadedImpl(
      {required final List<HealthPediaData> healthData,
      required final List<String> category})
      : _healthData = healthData,
        _category = category;

  final List<HealthPediaData> _healthData;
  @override
  List<HealthPediaData> get healthData {
    if (_healthData is EqualUnmodifiableListView) return _healthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthData);
  }

  final List<String> _category;
  @override
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'HealthPediaState.healthLoaded(healthData: $healthData, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$healthLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._healthData, _healthData) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_healthData),
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$healthLoadedImplCopyWith<_$healthLoadedImpl> get copyWith =>
      __$$healthLoadedImplCopyWithImpl<_$healthLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(
            List<HealthPediaData> healthData, List<String> category)
        healthLoaded,
  }) {
    return healthLoaded(healthData, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
  }) {
    return healthLoaded?.call(healthData, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(List<HealthPediaData> healthData, List<String> category)?
        healthLoaded,
    required TResult orElse(),
  }) {
    if (healthLoaded != null) {
      return healthLoaded(healthData, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(healthLoaded value) healthLoaded,
  }) {
    return healthLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(healthLoaded value)? healthLoaded,
  }) {
    return healthLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(healthLoaded value)? healthLoaded,
    required TResult orElse(),
  }) {
    if (healthLoaded != null) {
      return healthLoaded(this);
    }
    return orElse();
  }
}

abstract class healthLoaded implements HealthPediaState {
  const factory healthLoaded(
      {required final List<HealthPediaData> healthData,
      required final List<String> category}) = _$healthLoadedImpl;

  List<HealthPediaData> get healthData;
  List<String> get category;
  @JsonKey(ignore: true)
  _$$healthLoadedImplCopyWith<_$healthLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
