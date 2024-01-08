// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/child_update_response.dart';

import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/user_byprofile_userid.dart';
import 'package:yellow_squash/models/user_profile_update_second.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'user_profile_cubit.freezed.dart';
part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(this.repository) : super(const UserProfileState.initial());
  UserProfileRepository repository;

  Future<void> updateProfile({
    String? fullName,
    String? email,
    String? phone,
    String? profilePicture,
    int? age,
    String? gender,
    // String? location,
    String? timezone,
    List<String>? condition,
    List<String>? interests,
    String? userId,
  }) async {
    emit(const Loading());
    final params = <String, dynamic>{};
    params['fullName'] = fullName;
    params['email'] = email;
    params['phone'] = phone;
    params['profilePicture'] = profilePicture;
    params['age'] = age;
    params['gender'] = gender;
    // params['location'] = location;
    // params['timezone'] = timezone;
    params['condition'] = condition;
    params['interests'] = interests;
    params['userId'] = userId;

    await await repository.updateUserProfile(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(updateUserLoaded(response: response));
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

  Future<void> ChildupdateProfile({
    String? fullName,
    String? email,
    String? phone,
    String? image,
    String? profileId,
    int? age,
    String? gender,
    Map<String, String>? address,
    // String? timezone,
    List<String>? condition,
    List<String>? interests,
    String? userId,
  }) async {
    emit(const Loading());
    final params = <String, dynamic>{};
    params['fullName'] = fullName;
    params['email'] = email;
    params['phone'] = phone;
    params['image'] = image;
    params['age'] = age;
    params['gender'] = gender;
    params['address'] = address;
    // params['timezone'] = timezone;
    params['condition'] = condition;
    params['interests'] = interests;
    params['userId'] = userId;
    params['profileId'] = profileId;

    await await repository.updateChildProfile(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(UpdateChildProfileLoaded(response: response));
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

  Future<void> getuserByProfile(
      {required String id, required String ProfileId}) async {
    emit(const Loading());
    await await repository.getUserByProfile(id, ProfileId).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetuserByProfileLoaded(
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
