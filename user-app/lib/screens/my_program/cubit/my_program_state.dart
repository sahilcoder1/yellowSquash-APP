part of 'my_program_cubit.dart';

@freezed
class MyProgramState with _$MyProgramState {
  const factory MyProgramState.initial() = _Initial;
   const factory MyProgramState.loading() = Loading;
  const factory MyProgramState.error(String e) = ErrorState;
  const factory MyProgramState.myprogramLoaded({
    required MyProgram response,
  }) = MyprogramLoaded;
  const factory MyProgramState.myprogramProfileLoaded({
    required UserProfileData response,
  }) = MyprogramProfileLoaded;
}
