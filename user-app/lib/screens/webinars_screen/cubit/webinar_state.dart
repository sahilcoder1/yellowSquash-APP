part of 'webinar_cubit.dart';

@freezed
class WebinarState with _$WebinarState {
  const factory WebinarState.initial() = _Initial;
  const factory WebinarState.loading() = Loading;
  const factory WebinarState.error(String e) = ErrorState;
  const factory WebinarState.webinarsLoaded({
    required WebinarResponse response,
  }) = WebinarsLoaded;
}
