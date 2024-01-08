part of 'program_cubit_cubit.dart';

@freezed
class ProgramCubitState with _$ProgramCubitState {
  const factory ProgramCubitState.initial() = _Initial;
  const factory ProgramCubitState.loading() = Loading;
  const factory ProgramCubitState.error(String e) = ErrorState;
  const factory ProgramCubitState.programsLoaded({
    required ProgramsResponse response,
  }) = ProgramsLoaded;
  const factory ProgramCubitState.switchProfiledataLoaded({
    required SwitchProfileResponse response,
  }) = SwitchProfiledataLoaded;
    const factory ProgramCubitState.getUpdatedUserLoaded({
    required GetUpdatedUser response,
  }) = GetUpdatedUserLoaded;
  const factory ProgramCubitState.getFavLoaded({
    required FavouriteGetResponse response,
  }) = GetFavLoaded;
}
