import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/screens/health_pedia/repository/health_pedia_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'health_pedia_cubit.freezed.dart';
part 'health_pedia_state.dart';

@lazySingleton
class HealthPediaCubit extends Cubit<HealthPediaState> {
  HealthPediaCubit(this.repository) : super(const HealthPediaState.initial());
  HealthPediaRepository repository;

  final programList = List<HealthPediaData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getHealthPedia() async {
    emit(const Loading());
    await await repository.getHealth().then(
          (value) => value.when(
            success: (response) async {
              if (response?.data != null && response?.category != null) {
                emit(
                  healthLoaded(
                    healthData:
                        response!.data!.isNotEmpty ? response.data! : [],
                    category:
                        response.category!.isNotEmpty ? response.category! : [],
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
