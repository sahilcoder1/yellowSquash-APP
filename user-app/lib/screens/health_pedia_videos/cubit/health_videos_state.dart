part of 'health_videos_cubit.dart';

@freezed
class HealthVideosState with _$HealthVideosState {
  const factory HealthVideosState.initial() = _Initial;
  const factory HealthVideosState.loading() = Loading;
  const factory HealthVideosState.error(String e) = ErrorState;
  const factory HealthVideosState.healthVideoLoaded({
    required HealthPediavideoResponse response,
  }) = HealthVideoLoaded;
}
