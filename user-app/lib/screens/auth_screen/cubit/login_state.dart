part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
 
  const factory LoginState.sentOtpLoaded({required OtpResponse response}) =
      SentOtpLoaded;
  const factory LoginState.otpVerifyLoaded({required String response}) =
      OtpVerifyLoaded;

  const factory LoginState.registerUserLoaded({
    required UserResponse response,
  }) = RegisterUserLoaded;
  const factory LoginState.loginUserLoaded({
    required UserResponse response,
  }) = LoginUserLoaded;
  const factory LoginState.forgetOtpVerifyLoaded({
    required ForgetUserResponse response,
  }) = ForgetOtpVerifyLoaded;
  const factory LoginState.error(String e) = ErrorState;
  const factory LoginState.updatePassword({required String response}) =
      UpdatePassword;
}
