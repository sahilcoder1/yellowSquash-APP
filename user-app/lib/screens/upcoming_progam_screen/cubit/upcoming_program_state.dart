part of 'upcoming_program_cubit.dart';

@freezed
class UpcomingProgramState with _$UpcomingProgramState {
  const factory UpcomingProgramState.initial() = _Initial;
  const factory UpcomingProgramState.loading() = Loading;
  const factory UpcomingProgramState.error(String e) = ErrorState;
  const factory UpcomingProgramState.upComingProgramLoaded({
    required UpcomingProgramDescription response,
  }) = upComingProgramLoaded;
}
