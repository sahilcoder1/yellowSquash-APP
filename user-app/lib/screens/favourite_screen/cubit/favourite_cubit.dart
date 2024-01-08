import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/favourite_get_response.dart';
import 'package:yellow_squash/models/favourite_post_response.dart';
import 'package:yellow_squash/screens/favourite_screen/repository/favourite_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'favourite_cubit.freezed.dart';
part 'favourite_state.dart';

class FavouriteCubit extends Cubit<FavouriteState> {
  FavouriteCubit(this.repository) : super(const FavouriteState.initial());
  favouriteRepository repository;

  final categoryList = List<String>.empty(growable: true);

  Future<void> makeFav({
    required String programId,
    // ignore: non_constant_identifier_names
    required String UserId,
  }) async {
    emit(const Loading());
    final params = <String, String>{
      'programId': programId,
      'userId': UserId,
    };
    await await repository.makefav(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  MakeFavLoaded(
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

  Future<void> getFav({
    // ignore: non_constant_identifier_names
    required String UserId,
  }) async {
    emit(const Loading());
    await await repository.getFav(UserId).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetFavLoaded(
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
