part of 'mywebinar_cubit_cubit.dart';

@freezed
class MywebinarCubitState with _$MywebinarCubitState {
  const factory MywebinarCubitState.initial() = _Initial;
  const factory MywebinarCubitState.loading() = Loading;
  const factory MywebinarCubitState.error(String e) = ErrorState;
  const factory MywebinarCubitState.mywebinarLoaded({
    required MyWebinarResponse response,
  }) = MywebinarLoaded;
}
