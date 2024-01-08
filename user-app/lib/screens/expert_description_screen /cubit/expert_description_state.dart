part of 'expert_description_cubit.dart';

@freezed
class ExpertDescriptionState with _$ExpertDescriptionState {
  const factory ExpertDescriptionState.initial() = _Initial;
  const factory ExpertDescriptionState.loading() = Loading;
  const factory ExpertDescriptionState.error(String e) = ErrorState;
  // ignore: lines_longer_than_80_chars
  const factory ExpertDescriptionState.expertsDescripitonLoaded({
    required ExpertDescriptionResponse response,
  }) = ExpertsDescriptionLoaded;
}
