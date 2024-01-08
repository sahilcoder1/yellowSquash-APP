// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/comment_get_response.dart';
import 'package:yellow_squash/models/comment_post_response.dart';
import 'package:yellow_squash/models/health_pedia_description_loaded.dart';
import 'package:yellow_squash/screens/health_pedia_description_screen/repository/health_pedia_description_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'health_pedia_description_cubit.freezed.dart';
part 'health_pedia_description_state.dart';

class HealthPediaDescriptionCubit extends Cubit<HealthPediaDescriptionState> {
  HealthPediaDescriptionCubit(this.repository)
      : super(const HealthPediaDescriptionState.initial());
  HealthDescriptionRespository repository;

  final programList = List<HealthDescriptionPediaData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);

  Future<void> getComment({required String userId}) async {
    emit(const Loading());
    await await repository.getComment(userId).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetCommentLoaded(
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

  Future<void> getHealthDescription({required String slug}) async {
    emit(const Loading());
    await await repository.getHealthDescription(slug).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  HealthDescripitonLoaded(
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

  Future<void> makeComment({
    required String UserId,
    required String articleId,
    required String comment,
    // ignore: 
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'userId': UserId,
      'articleId': articleId,
      'comment': comment,
    };
    await await repository.makeComment(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  CommentPostLoaded(
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
