import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/upcoming_program_description.dart';
import 'package:yellow_squash/screens/upcoming_progam_screen/repository/upcoming_program_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'upcoming_program_cubit.freezed.dart';
part 'upcoming_program_state.dart';

class UpcomingProgramCubit extends Cubit<UpcomingProgramState> {
  UpcomingProgramCubit(this.repository)
      : super(const UpcomingProgramState.initial());
  final programList = List<UpcomingProgramData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  UpcomingProgramRepository repository;

  Future<void> getUpComingProgram({required String expert}) async {
    emit(const Loading());
    final params = <String, String>{'expert': expert};
    await await repository.getUpComingProgram(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(upComingProgramLoaded(response: response));
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
