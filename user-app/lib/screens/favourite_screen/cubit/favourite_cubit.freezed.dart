// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteStateCopyWith<$Res> {
  factory $FavouriteStateCopyWith(
          FavouriteState value, $Res Function(FavouriteState) then) =
      _$FavouriteStateCopyWithImpl<$Res, FavouriteState>;
}

/// @nodoc
class _$FavouriteStateCopyWithImpl<$Res, $Val extends FavouriteState>
    implements $FavouriteStateCopyWith<$Res> {
  _$FavouriteStateCopyWithImpl(this._value, this._then);

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
    extends _$FavouriteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'FavouriteState.initial()';
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
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
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
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouriteState {
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
    extends _$FavouriteStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'FavouriteState.loading()';
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
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
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
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements FavouriteState {
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
    extends _$FavouriteStateCopyWithImpl<$Res, _$ErrorStateImpl>
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
    return 'FavouriteState.error(e: $e)';
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
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
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
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements FavouriteState {
  const factory ErrorState(final String e) = _$ErrorStateImpl;

  String get e;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MakeFavLoadedImplCopyWith<$Res> {
  factory _$$MakeFavLoadedImplCopyWith(
          _$MakeFavLoadedImpl value, $Res Function(_$MakeFavLoadedImpl) then) =
      __$$MakeFavLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavouritePostResponse response});

  $FavouritePostResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$MakeFavLoadedImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$MakeFavLoadedImpl>
    implements _$$MakeFavLoadedImplCopyWith<$Res> {
  __$$MakeFavLoadedImplCopyWithImpl(
      _$MakeFavLoadedImpl _value, $Res Function(_$MakeFavLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$MakeFavLoadedImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as FavouritePostResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavouritePostResponseCopyWith<$Res> get response {
    return $FavouritePostResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$MakeFavLoadedImpl implements MakeFavLoaded {
  const _$MakeFavLoadedImpl({required this.response});

  @override
  final FavouritePostResponse response;

  @override
  String toString() {
    return 'FavouriteState.makeFavLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeFavLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeFavLoadedImplCopyWith<_$MakeFavLoadedImpl> get copyWith =>
      __$$MakeFavLoadedImplCopyWithImpl<_$MakeFavLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) {
    return makeFavLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) {
    return makeFavLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (makeFavLoaded != null) {
      return makeFavLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) {
    return makeFavLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) {
    return makeFavLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (makeFavLoaded != null) {
      return makeFavLoaded(this);
    }
    return orElse();
  }
}

abstract class MakeFavLoaded implements FavouriteState {
  const factory MakeFavLoaded({required final FavouritePostResponse response}) =
      _$MakeFavLoadedImpl;

  FavouritePostResponse get response;
  @JsonKey(ignore: true)
  _$$MakeFavLoadedImplCopyWith<_$MakeFavLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavLoadedImplCopyWith<$Res> {
  factory _$$GetFavLoadedImplCopyWith(
          _$GetFavLoadedImpl value, $Res Function(_$GetFavLoadedImpl) then) =
      __$$GetFavLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavouriteGetResponse response});

  $FavouriteGetResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$GetFavLoadedImplCopyWithImpl<$Res>
    extends _$FavouriteStateCopyWithImpl<$Res, _$GetFavLoadedImpl>
    implements _$$GetFavLoadedImplCopyWith<$Res> {
  __$$GetFavLoadedImplCopyWithImpl(
      _$GetFavLoadedImpl _value, $Res Function(_$GetFavLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GetFavLoadedImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as FavouriteGetResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavouriteGetResponseCopyWith<$Res> get response {
    return $FavouriteGetResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$GetFavLoadedImpl implements GetFavLoaded {
  const _$GetFavLoadedImpl({required this.response});

  @override
  final FavouriteGetResponse response;

  @override
  String toString() {
    return 'FavouriteState.getFavLoaded(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavLoadedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavLoadedImplCopyWith<_$GetFavLoadedImpl> get copyWith =>
      __$$GetFavLoadedImplCopyWithImpl<_$GetFavLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String e) error,
    required TResult Function(FavouritePostResponse response) makeFavLoaded,
    required TResult Function(FavouriteGetResponse response) getFavLoaded,
  }) {
    return getFavLoaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String e)? error,
    TResult? Function(FavouritePostResponse response)? makeFavLoaded,
    TResult? Function(FavouriteGetResponse response)? getFavLoaded,
  }) {
    return getFavLoaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String e)? error,
    TResult Function(FavouritePostResponse response)? makeFavLoaded,
    TResult Function(FavouriteGetResponse response)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (getFavLoaded != null) {
      return getFavLoaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(MakeFavLoaded value) makeFavLoaded,
    required TResult Function(GetFavLoaded value) getFavLoaded,
  }) {
    return getFavLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ErrorState value)? error,
    TResult? Function(MakeFavLoaded value)? makeFavLoaded,
    TResult? Function(GetFavLoaded value)? getFavLoaded,
  }) {
    return getFavLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(MakeFavLoaded value)? makeFavLoaded,
    TResult Function(GetFavLoaded value)? getFavLoaded,
    required TResult orElse(),
  }) {
    if (getFavLoaded != null) {
      return getFavLoaded(this);
    }
    return orElse();
  }
}

abstract class GetFavLoaded implements FavouriteState {
  const factory GetFavLoaded({required final FavouriteGetResponse response}) =
      _$GetFavLoadedImpl;

  FavouriteGetResponse get response;
  @JsonKey(ignore: true)
  _$$GetFavLoadedImplCopyWith<_$GetFavLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
