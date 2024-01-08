import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/program_duration_discount_response.dart';
import 'package:yellow_squash/models/programs_description_response.dart';
import 'package:yellow_squash/models/reviews_response.dart';
import 'package:yellow_squash/screens/description_screen/repository/program_description_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'program_description_cubit_cubit.freezed.dart';
part 'program_description_cubit_state.dart';

class ProgramDescriptionCubitCubit extends Cubit<ProgramDescriptionCubitState> {
  ProgramDescriptionCubitCubit(this.repository)
      : super(const ProgramDescriptionCubitState.initial());
  ProgramDescriptionRepository repository;

  final programList = List<ProgramDescriptionData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);

  Future<void> getProgramsDescription({
    required String programid,
    // ignore: non_constant_identifier_names
    required String UserId,
    required String profileId,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'programId': programid,
      'userId': UserId,
      'profileId': profileId,
    };
    await await repository.getProgramsDescription(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ProgramsDescriptionLoaded(
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
    Future<void> getReviews({required String programId}) async {
    emit(const Loading());
    await await repository.getReviews(programId).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ProgramReviewsLoaded(
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

  Future<void> getProgramDurationAndPrice({
    required String programid,
    required String userId,
    required String? type,
    required String? planDuration,
  }) async {
    final params = <String, String>{
      'programId': programid,
      'userId': userId,
      'type': type!,
      'planDuration': planDuration!,
    };
    await await repository.getProgramDurationAndPrice(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ProgramDiscountLoaded(
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
