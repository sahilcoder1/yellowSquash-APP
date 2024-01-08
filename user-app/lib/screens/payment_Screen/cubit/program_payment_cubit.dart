// ignore_for_file: avoid_dynamic_calls

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yellow_squash/models/discount_response.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/program_order_response.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/program_payment_verified_payload_modal.dart';
import 'package:yellow_squash/screens/payment_Screen/repository/payment_repository.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

part 'program_payment_cubit.freezed.dart';
part 'program_payment_state.dart';

class ProrgamOrderCubit extends Cubit<ProgramPaymentState> {
  ProrgamOrderCubit(this.repository)
      : super(const ProgramPaymentState.initial());
  ProgramPaymentOrderRepository repository;

  final programList = List<ProgramOrderData>.empty(growable: true);
  final categoryList = List<String>.empty(growable: true);

  Future<void> getProgramOrder({
    required String? programId,
    required String? userId,
    required String? currency,
    required String? planType,
    required String? planSubType,
    required String? couponCode,
    required int? amount,
  }) async {
    emit(const Loading());

    final params = <String, dynamic>{
      'programId': programId,
      'userId': userId,
      'currency': currency,
      'planType': planSubType,
      'planSubType': planType,
      'amount': amount,
      'couponCode': couponCode ?? '',
    };
    await await repository.getProgramOrder(params).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ProgramOrderLoaded(
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

  Future<void> getVerifiedProgramOrder(
    ProgramPaymentVerifiedPayloadModal data,
  ) async {
    emit(const Loading());

    await await repository.getVerifyProgramOrder(data).then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  ProgramVerifyOrderLoaded(
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

  Future<void> getdiscountCoupon({
    required String coupon,
    // ignore: non_constant_identifier_names
    required String UserId,
    // ignore: non_constant_identifier_names
    required String ProgramId,
    required int amount,
  }) async {
    emit(const Loading());
    await await repository
        .getdiscountCoupon(coupon, ProgramId, UserId, amount)
        .then(
          (value) => value.when(
            success: (response) async {
              if (response != null) {
                emit(
                  GetDiscountCouponLoaded(
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
