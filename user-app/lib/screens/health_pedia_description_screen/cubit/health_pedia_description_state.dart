part of 'health_pedia_description_cubit.dart';

@freezed
class HealthPediaDescriptionState with _$HealthPediaDescriptionState {
  const factory HealthPediaDescriptionState.initial() = _Initial;
  const factory HealthPediaDescriptionState.loading() = Loading;
  const factory HealthPediaDescriptionState.error(String e) = ErrorState;
  // ignore: lines_longer_than_80_chars
  const factory HealthPediaDescriptionState.healthDescripitonLoaded({
    required HealthPediaDescriptionLoaded response,
  }) = HealthDescripitonLoaded;
    const factory HealthPediaDescriptionState.commentPostLoaded({
    required CommentPostResponse response,
  }) = CommentPostLoaded;
  const factory HealthPediaDescriptionState.getCommentLoaded({
    required CommentGetResponse response,
  }) = GetCommentLoaded;
}
