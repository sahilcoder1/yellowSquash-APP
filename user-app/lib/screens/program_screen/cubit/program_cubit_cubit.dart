// ignore_for_file: always_use_package_imports

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/models/switch_profile_response.dart';
import 'package:yellow_squash/screens/program_screen/repository/program_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

import '../../../models/favourite_get_response.dart';
import '../../../models/get_updated_user.dart';

part 'program_cubit_cubit.freezed.dart';
part 'program_cubit_state.dart';

@lazySingleton
class ProgramCubit extends Cubit<ProgramCubitState> {
  ProgramCubit(this.repository) : super(const ProgramCubitState.initial());
  ProgramRepository repository;

  final programList = List<ProgramData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getPrograms() async {
    emit(const Loading());
    await await repository.getPrograms().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(ProgramsLoaded(response: response));
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

  Future<void> getSwitchProfileData({
    required String userId,
  }) async {
    final params = <String, String>{
      'userId': userId,
    };
    await await repository.getSwitchProfiledata(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  SwitchProfiledataLoaded(
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
    Future<void> getFav({
    // ignore: non_constant_identifier_names
    required String UserId,
  }) async {
    emit(const Loading());
    await await repository.getFav(UserId).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetFavLoaded(
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
    Future<void> getUpdatedProfile({required String id}) async {
    emit(const Loading());
    await await repository.getupdatedProfileUser(id).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetUpdatedUserLoaded(
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
