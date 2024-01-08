part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.error(String e) = ErrorState;
  const factory HomeState.expertsLoaded({
    required ExpertResponse response,
  }) = ExpertsLoaded;
  const factory HomeState.upcomingProrgamLoaded({
    required UpcomingProgramResponse response,
  }) = UpcomingProrgamLoaded;
  const factory HomeState.upcomingWebinarLoaded({
    required WebinarResponse response,
  }) = UpcomingWebinarLoaded;
  const factory HomeState.exploreHealthPediaLoaded({
    required HealthPediaResponse response,
  }) = ExploreHealthPediaLoaded;
  const factory HomeState.switchProfiledataLoaded({
    required SwitchProfileResponse response,
  }) = SwitchProfiledataLoaded;
  const factory HomeState.getUpdatedUserLoaded({
  required GetUpdatedUser response,
  }) = GetUpdatedUserLoaded;

}
