// ignore_for_file: directives_ordering

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/expert_screen/view/expert_card.dart';
import 'package:yellow_squash/screens/health_pedia/view/Health_Card.dart';
import 'package:yellow_squash/screens/health_pedia_videos/view/heath_video_card.dart';
import 'package:yellow_squash/screens/webinars_screen/view/webinar_card.dart';
import 'package:yellow_squash/utils/common_widgets/expert_card_webinar.dart';
import 'package:yellow_squash/utils/common_widgets/fade_animation.dart';
import 'package:yellow_squash/utils/common_widgets/favourite_screen.dart';
import 'package:yellow_squash/utils/common_widgets/program_card.dart';
import 'package:yellow_squash/utils/common_widgets/fav_provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().push(const HomeRoute());
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Favorites',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Consumer<FavoritesProvider>(
        builder: (context, favoritesProvider, _) {
          final favoritePrograms = favoritesProvider.favoritePrograms;
          final favoriteExperts = favoritesProvider.favoriteExperts;
          final favoriteHealthPedia = favoritesProvider.favoriteHealthPedia;
          final favoriteHealthPediaVideo =
              favoritesProvider.favoriteHealthPediaVideo;
          final favoriteWebinars = favoritesProvider.favoriteWebinars;
          final favouritewebinarExpert =
              favoritesProvider.favoriteWebinarDescriptions;

          if (favoritePrograms.isEmpty &&
              favoriteExperts.isEmpty &&
              favoriteHealthPedia.isEmpty &&
              favoriteHealthPediaVideo.isEmpty &&
              favoriteWebinars.isEmpty &&
              favouritewebinarExpert.isEmpty) {
            return const Fav();
          }

          return ListView.builder(
            itemCount: favoritePrograms.length +
                favoriteExperts.length +
                favoriteHealthPedia.length +
                favoriteHealthPediaVideo.length +
                favoriteWebinars.length +
                favouritewebinarExpert.length,
            itemBuilder: (context, index) {
              if (index < favoritePrograms.length) {
                final programData = favoritePrograms[index];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: ProgramCardScreen(
                    programData: programData,
                    profileId: '',
                  ),
                );
              } else if (index <
                  favoritePrograms.length + favoriteExperts.length) {
                final expertData =
                    favoriteExperts[index - favoritePrograms.length];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: ExpertCard(expertData: expertData),
                );
              } else if (index <
                  favoritePrograms.length +
                      favoriteExperts.length +
                      favoriteHealthPedia.length) {
                final healthPediaData = favoriteHealthPedia[
                    index - favoritePrograms.length - favoriteExperts.length];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: HealthCard(
                    healthData: healthPediaData,
                  ),
                );
              } else if (index <
                  favoritePrograms.length +
                      favoriteExperts.length +
                      favoriteHealthPedia.length +
                      favoriteHealthPediaVideo.length) {
                final healthPediaVideoData = favoriteHealthPediaVideo[index -
                    favoritePrograms.length -
                    favoriteExperts.length -
                    favoriteHealthPedia.length];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: HealthVideoCard(
                    healthData: healthPediaVideoData,
                  ),
                );
              } else if (index <
                  favoritePrograms.length +
                      favoriteExperts.length +
                      favoriteHealthPedia.length +
                      favoriteHealthPediaVideo.length +
                      favoriteWebinars.length) {
                final webinarData = favoriteWebinars[index -
                    favoritePrograms.length -
                    favoriteExperts.length -
                    favoriteHealthPedia.length -
                    favoriteHealthPediaVideo.length];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: WebinarCard(
                    webinarData: webinarData,
                  ),
                );
              } else if (index <
                  favoritePrograms.length +
                      favoriteExperts.length +
                      favoriteHealthPedia.length +
                      favoriteHealthPediaVideo.length) {
                final expertwebinarData = favouritewebinarExpert[index -
                    favoritePrograms.length -
                    favoriteExperts.length -
                    favoriteHealthPedia.length -
                    favoriteHealthPediaVideo.length];
                return FadeAnimation(
                  delay: 0.3,
                  direction:
                      index.isEven ? AniDirection.left : AniDirection.right,
                  child: ExpertCardWebinar(
                    expertData: expertwebinarData,
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          );
        },
      ),
    );
  }
}
