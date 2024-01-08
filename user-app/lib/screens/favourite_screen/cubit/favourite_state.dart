part of 'favourite_cubit.dart';

@freezed
class FavouriteState with _$FavouriteState {
  const factory FavouriteState.initial() = _Initial;
   const factory FavouriteState.loading() = Loading;
  const factory FavouriteState.error(String e) = ErrorState;
  // ignore: lines_longer_than_80_chars
  const factory FavouriteState.makeFavLoaded({
    required FavouritePostResponse response,
  }) = MakeFavLoaded;
  const factory FavouriteState.getFavLoaded({
    required FavouriteGetResponse response,
  }) = GetFavLoaded;
  

}
