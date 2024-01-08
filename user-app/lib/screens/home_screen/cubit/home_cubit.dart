import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/models/switch_profile_response.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_response.dart';
import 'package:yellow_squash/screens/home_screen/repository/home_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.repository) : super(const HomeState.initial());
  HomeRepository repository;
  final programList = List<ExpertData>.empty(growable: true);
  final upComingProgramList = List<UpcomingProgramData>.empty(growable: true);
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

  Future<void> getUpcomingWebinar() async {
    emit(const Loading());
    await await repository.getUpcomingWebinar().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(UpcomingProrgamLoaded(response: response));
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

  Future<void> getUpComingProgram({
    required String expert,
  
  }) async {
    emit(const Loading());
    final params = <String, String>{'expert': expert,};
    await await repository.getUpcomingProgram(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(UpcomingProrgamLoaded(response: response));
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



  Future<void> getexploreHealthPedia() async {
    emit(const Loading());
    await await repository.exploreHealthPedia().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(ExploreHealthPediaLoaded(response: response));
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
}
