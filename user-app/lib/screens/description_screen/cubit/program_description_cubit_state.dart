part of 'program_description_cubit_cubit.dart';

@freezed
class ProgramDescriptionCubitState with _$ProgramDescriptionCubitState {
  const factory ProgramDescriptionCubitState.initial() = _Initial;
  const factory ProgramDescriptionCubitState.loading() = Loading;
  const factory ProgramDescriptionCubitState.error(String e) = ErrorState;
  // ignore: lines_longer_than_80_chars
  const factory ProgramDescriptionCubitState.programsDescripitonLoaded({
    required ProgramsDescriptionResponse response,
  }) = ProgramsDescriptionLoaded;

  const factory ProgramDescriptionCubitState.programDiscountLoaded({
    required ProgramDurationDiscountResponse response,
  }) = ProgramDiscountLoaded;
   const factory ProgramDescriptionCubitState.programReviewsLoaded({
    required ReviewsResponse response,
  }) = ProgramReviewsLoaded;
}
