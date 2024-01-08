part of 'expert_cubit.dart';

@freezed
class ExpertState with _$ExpertState {
  const factory ExpertState.initial() = _Initial;
  const factory ExpertState.loading() = Loading;
  const factory ExpertState.error(String e) = ErrorState;
  const factory ExpertState.expertsLoaded({
    required ExpertResponse response,
  }) = ExpertsLoaded;
}
