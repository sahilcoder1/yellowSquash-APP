import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/models/forget_user_response.dart';
import 'package:yellow_squash/models/otp_response.dart';
import 'package:yellow_squash/models/user_response.dart';
import 'package:yellow_squash/screens/auth_screen/repository/login_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.repository) : super(const Initial());

  LoginRepository repository;

  Future<void> generateOtp({required String mobile}) async {
    emit(const Loading());
    final params = <String, String>{'phone': mobile};
    await await repository.sendOtp(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(SentOtpLoaded(response: response));
              } else {
                emit(ErrorState(response!.message!));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> forgetGenerateOtp({required String mobile}) async {
    emit(const Loading());
    final params = <String, String>{'phone': mobile};
    await await repository.forgetSentOtp(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(SentOtpLoaded(response: response));
              } else {
                emit(ErrorState(response!.message!));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> verifyOtp({required String mobile, required String otp}) async {
    emit(const Loading());
    final params = <String, String>{'mobile': mobile, 'otp': otp};
    await await repository.verifyOtp(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(OtpVerifyLoaded(response: response));
              } else {
                emit(const ErrorState('Something went wrong'));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> forgetVerifyOtp({
    required String mobile,
    required String otp,
  }) async {
    emit(const Loading());
    final params = <String, String>{'mobile': mobile, 'otp': otp};
    await await repository.forgetVerifyOtp(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(ForgetOtpVerifyLoaded(response: response));
              } else {
                emit(const ErrorState('Something went wrong'));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> registerUser({
    required String role,
    required String mobile,
    required String name,
    required String email,
    required String password,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'role': role,
      'phone': mobile,
      'email': email,
      'fullName': name,
      'password': password,
    };
    await await repository.registerUser(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(RegisterUserLoaded(response: response));
              } else {
                emit(const ErrorState('Something went wrong'));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> loginUser({
    required String mobile,
    required String password,
  }) async {
    emit(const Loading());
    final params = <String, String>{'phone': mobile, 'password': password};
    await await repository.loginUser(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(LoginUserLoaded(response: response));
              } else {
                emit(const ErrorState('Something went wrong'));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }

  Future<void> forgetUser({
    required String userId,
    required String password,
  }) async {
    emit(const Loading());
    final params = <String, String>{'userId': userId, 'password': password};
    await await repository.forgetUser(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(UpdatePassword(response: response));
              } else {
                emit(const ErrorState('Something went wrong'));
              }
            },
            failure: (networkExceptions) {
              emit(
                ErrorState(
                  NetworkExceptions.getErrorMessage(
                    NetworkExceptions.getDioException(networkExceptions),
                  ),
                ),
              );
            },
          ),
        );
  }
}
