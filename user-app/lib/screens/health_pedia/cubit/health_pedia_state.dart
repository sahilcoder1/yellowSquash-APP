part of 'health_pedia_cubit.dart';

@freezed
class HealthPediaState with _$HealthPediaState {
  const factory HealthPediaState.initial() = _Initial;
  const factory HealthPediaState.loading() = Loading;
  const factory HealthPediaState.error(String e) = ErrorState;
  const factory HealthPediaState.healthLoaded({
    required List<HealthPediaData> healthData,
    required List<String> category,
  }) = healthLoaded;
}
