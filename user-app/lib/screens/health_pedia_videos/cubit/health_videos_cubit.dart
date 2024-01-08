import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/health_pediavideo_response.dart';
import 'package:yellow_squash/screens/health_pedia_videos/repository/heallth_pedia_videos_repository.dart';

import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'health_videos_cubit.freezed.dart';
part 'health_videos_state.dart';

class HealthVideosCubit extends Cubit<HealthVideosState> {
  HealthVideosCubit(this.repository) : super(const HealthVideosState.initial());

  HealthPediaVideoRepository repository;

  final programList = List<HealthPediaVideoData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getHealthVideo() async {
    emit(const Loading());
    await await repository.getHealthVideo().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(HealthVideoLoaded(response: response));
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
