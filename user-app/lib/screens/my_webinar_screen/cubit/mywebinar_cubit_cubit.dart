import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/my_webinar_response.dart';
import 'package:yellow_squash/screens/my_webinar_screen/repository/my_webinar_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'mywebinar_cubit_cubit.freezed.dart';
part 'mywebinar_cubit_state.dart';

class MywebinarCubitCubit extends Cubit<MywebinarCubitState> {
  MywebinarCubitCubit(this.repository)
      : super(const MywebinarCubitState.initial());
  MywebinarRepository repository;

  final programList = List<MyWebinarData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);
  Future<void> getMyWebinar({
    required String userId,
    required String phone,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'userId': userId,
      'phone': phone,
    };
    await await repository.getMyWebinar(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  MywebinarLoaded(
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
