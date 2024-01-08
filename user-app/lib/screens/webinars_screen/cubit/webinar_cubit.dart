// ignore_for_file: camel_case_types, always_use_package_imports

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/screens/webinars_screen/repository/webinar_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

import '../../../models/webinar_response/webinar_response.dart';

part 'webinar_cubit.freezed.dart';
part 'webinar_state.dart';

class webinarCubit extends Cubit<WebinarState> {
  webinarCubit(this.repository) : super(const WebinarState.initial());
  WebinarRepository repository;

  final programList = List<WebinarData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getWebinars() async {
    emit(const Loading());
    await await repository.getWebinars().then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(WebinarsLoaded(response: response));
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
