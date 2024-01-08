// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/webinar_order_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/models/webinar_verify_response.dart';
import 'package:yellow_squash/models/webinars_description.dart';
import 'package:yellow_squash/screens/webinar_description_screen/repository/webinar_description_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'webinar_description_cubit_cubit.freezed.dart';
part 'webinar_description_cubit_state.dart';

class WebinarDescriptionCubitCubit extends Cubit<WebinarDescriptionCubitState> {
  WebinarDescriptionCubitCubit(this.repository)
      : super(const WebinarDescriptionCubitState.initial());
  WebinarDescriptionRepository repository;

  final programList = List<WebinarData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);

  Future<void> getWebinarsDescription({required String id}) async {
    emit(const Loading());
    await await repository.getWebinarsDescription(id).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  WebinarsDescriptionLoaded(
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

  Future<void> getWebinarOrder({
    required String userId,
    required String webinarId,
    required String currency,
    required int amount,
    String? couponCode,
  }) async {
    emit(const Loading());
    final params = <String, String?>{
      'userId': userId,
      'webinarId': webinarId,
      'currency': currency,
      'amount': amount.toString(),
      'couponCode': couponCode,
    };
    await await repository.getWebinarOrder(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  WebinarsDescripitonOrderLoaded(
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




  Future<void> getverifyWebinarOrder({
    
    required String razorpay_order_id,
    required String razorpay_payment_id,
    required String razorpay_signature,
    required String fullName,
    required String phoneNumber,
    required String emailId,
  }) async {
    emit(const Loading());
    final params = <String, String?>{
      'razorpay_order_id': razorpay_order_id,
      'razorpay_payment_id': razorpay_payment_id,
      'razorpay_signature': razorpay_signature,
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'emailId': emailId,
    };
    await await repository.getverifyWebinarOrder(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  webinarVerifyResponseLoaded(
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
}
