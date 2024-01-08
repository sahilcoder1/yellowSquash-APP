import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/my_program.dart';
import 'package:yellow_squash/models/user_profile_data.dart';
import 'package:yellow_squash/screens/my_program/repository/myprogram_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'my_program_cubit.freezed.dart';
part 'my_program_state.dart';

class MyProgramCubit extends Cubit<MyProgramState> {
  MyProgramCubit(this.repository) : super(const MyProgramState.initial());
  MyProgramRepository repository;

  final programList = List<MyProgramData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getMyProgram({
    required String userId,
    required String profileId,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'userId': userId,
      'profileId': profileId,
    };
    await await repository.getMyProgram(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  MyprogramLoaded(
                    response: response,
                  ),
                );
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

  Future<void> getMyProfileProgram({
    required String userId,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'userId': userId,
    };
    await await repository.getMyProgramProfile(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  MyprogramProfileLoaded(
                    response: response,
                  ),
                );
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
}
