// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yellow_squash/models/expert_description_response.dart';
import 'package:yellow_squash/screens/expert_description_screen%20/repository/expert_description_repository.dart';

import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'expert_description_state.dart';
part 'expert_description_cubit.freezed.dart';

class ExpertDescriptionCubit extends Cubit<ExpertDescriptionState> {
  ExpertDescriptionCubit(this.repository)
      : super(const ExpertDescriptionState.initial());
  ExpertDescriptionRepository repository;

  final programList = List<ExpertDescriptionData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);

//   Future<void> getExpertsDescription({required String id}) async {
//     emit(const Loading());
//     await await repository.getExpertDescription(id).then(
//           (value) => value.when(
//             success: (response) async {
//               if (response != null) {
//                 emit(
//                   ExpertsDescriptionLoaded(
//                     response: response,
//                   ),
//                 );
//               } else {
//                 emit(ErrorState(response!.message!));
//               }
//             },
//             failure: (networkExceptions) {
//               emit(
//                 ErrorState(
//                   NetworkExceptions.getErrorMessage(
//                     NetworkExceptions.getDioException(networkExceptions),
//                   ),
//                 ),
//               );
//             },
//           ),
//         );
//   }
// }

  Future<void> getExpertDescription({
    required String Id,
  }) async {
    final params = <String, String>{
      'Id': Id,
    };
    await await repository.getExpertDescription(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ExpertsDescriptionLoaded(
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
