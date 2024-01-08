import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/screens/expert_screen/repository/expert_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'expert_cubit.freezed.dart';
part 'expert_state.dart';

class ExpertCubit extends Cubit<ExpertState> {
  ExpertCubit(this.repository) : super(const ExpertState.initial());
  ExpertRepository repository;

  final programList = List<ExpertData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getExperts() async {
    emit(const Loading());
    await await repository.getExperts().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(ExpertsLoaded(response: response));
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

  Future<void> filterCategory() async {
    emit(const Loading());
    await await repository.filterCategory().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(ExpertsLoaded(response: response));
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
