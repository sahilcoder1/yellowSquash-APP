part of 'webinar_description_cubit_cubit.dart';

@freezed
class WebinarDescriptionCubitState with _$WebinarDescriptionCubitState {
  const factory WebinarDescriptionCubitState.initial() = _Initial;
  const factory WebinarDescriptionCubitState.loading() = Loading;
  const factory WebinarDescriptionCubitState.error(String e) = ErrorState;
  // ignore: lines_longer_than_80_chars
  const factory WebinarDescriptionCubitState.webinarsDescripitonLoaded({
    required WebinarsDescription response,
  }) = WebinarsDescriptionLoaded;
  const factory WebinarDescriptionCubitState.webinarsDescripitonOrderLoaded({
    required WebinarOrderResponse response,
  }) = WebinarsDescripitonOrderLoaded;
  const factory WebinarDescriptionCubitState.webinarVerifyResponseLoaded({
    required WebinarVerifyResponse response,
  }) = webinarVerifyResponseLoaded;
    const factory WebinarDescriptionCubitState.getUpdatedUserLoaded({
    required GetUpdatedUser response,
  }) = GetUpdatedUserLoaded;
}
