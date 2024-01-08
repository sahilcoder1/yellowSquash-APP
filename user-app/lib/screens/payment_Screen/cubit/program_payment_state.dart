part of 'program_payment_cubit.dart';

@freezed
class ProgramPaymentState with _$ProgramPaymentState {
  const factory ProgramPaymentState.initial() = _Initial;
  const factory ProgramPaymentState.loading() = Loading;
  const factory ProgramPaymentState.error(String e) = ErrorState;
  // ignore:
  const factory ProgramPaymentState.programOrderLoaded({
    required ProgramOrderResponse response,
  }) = ProgramOrderLoaded;

  const factory ProgramPaymentState.programVerifyOrderLoaded({
    required dynamic response,
  }) = ProgramVerifyOrderLoaded;
   const factory ProgramPaymentState.getDiscountCouponLoaded({
    required DiscountResponse response,
  }) = GetDiscountCouponLoaded;
   const factory ProgramPaymentState.getUpdatedUserLoaded({
    required GetUpdatedUser response,
  }) = GetUpdatedUserLoaded;
}
