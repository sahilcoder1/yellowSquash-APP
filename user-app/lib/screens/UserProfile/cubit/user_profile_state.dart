part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loading() = Loading;
  const factory UserProfileState.error(String e) = ErrorState;
  const factory UserProfileState.updateUserLoaded({
    required UserProfileUpdateSecond response,
  }) = updateUserLoaded;
  const factory UserProfileState.updateChildProfileLoaded({
    required ChildUpdateResponse response,
  }) = UpdateChildProfileLoaded;
  // ChildUpdateResponse
    const factory UserProfileState.getUpdatedUserLoaded({
    required GetUpdatedUser response,
  }) = GetUpdatedUserLoaded;
     const factory UserProfileState.getuserByProfile({
    required UserByprofileUserid response,
  }) = GetuserByProfileLoaded;
}
