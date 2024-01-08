// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/favourite_get_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/favourite_screen/cubit/favourite_cubit.dart';
import 'package:yellow_squash/screens/favourite_screen/repository/favourite_repository.dart';
import 'package:yellow_squash/screens/favourite_screen/view/favourite_card.dart';
import 'package:yellow_squash/utils/common_widgets/favourite_screen.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(favouriteRepository()),
      child: const FavouriteView(),
    );
  }
}

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  
  final FavprogramData = List<ProgramId>.empty(growable: true);
  final FavexpertData = List<ExpertId>.empty(growable: true);
  final FavhealthPediaData = List<HealthPediaId>.empty(growable: true);
  // ignore: lines_longer_than_80_chars
  final FavhealthPediaVedioData =
      List<VideohealthPediaId>.empty(growable: true);
  final FavWebinarData = List<WebinarId>.empty(growable: true);

  final userData = StorageManager.getUserData();
  @override
  void initState() {
    context.read<FavouriteCubit>().getFav(UserId: userData!.id!);
    super.initState();
  }

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
      body: BlocConsumer<FavouriteCubit, FavouriteState>(
        listener: (context, state) {
          if (state is GetFavLoaded) {
            FavprogramData
              ..clear()
              ..addAll(state.response.data!.programId!);
            FavexpertData
              ..clear()
              ..addAll(state.response.data!.expertId!);
            FavhealthPediaData
              ..clear()
              ..addAll(state.response.data!.healthPediaId!);
            FavhealthPediaVedioData
              ..clear()
              ..addAll(state.response.data!.videohealthPediaId!);
            FavWebinarData
              ..clear()
              ..addAll(state.response.data!.webinarId!);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(
              show: true,
            );
          }
          if (FavprogramData.isEmpty &&
              FavexpertData.isEmpty &&
              FavhealthPediaData.isEmpty &&
              FavhealthPediaVedioData.isEmpty &&
              FavWebinarData.isEmpty) {
            return const Center(child: Fav());
          }
          return ListView.builder(
            itemCount: FavprogramData.length +
                FavexpertData.length +
                FavhealthPediaData.length +
                FavhealthPediaVedioData.length +
                FavWebinarData.length,
            itemBuilder: (context, index) {
              if (index < FavprogramData.length) {
                final programData = FavprogramData[index];
                return FavProgramCardView(
                  id: programData.id!,
                  title: programData.title!,
                  expert: programData.expert!,
                  expertDesignation: programData.expertDesignation!,
                  expertImage: programData.expertImage!,
                  fordeseases: programData.fordeseases!,
                  imageUrl: programData.imageUrl!,
                  programCategory: programData.programCategory!,
                );
              } else if (index < FavprogramData.length + FavexpertData.length) {
                final expertIndex = index - FavprogramData.length;
                final expertData = FavexpertData[expertIndex];
                return FavProgramCardView(
                  id: expertData.id!,
                  title: expertData.expertDesignation!,
                  expert: expertData.expertName!,
                  expertDesignation: expertData.expertDesignation!,
                  expertImage: expertData.expertProfile!,
                  fordeseases: expertData.expertCategory!,
                  imageUrl: expertData.expertProfile!,
                  programCategory: expertData.expertCategory!,
                );
              } else if (index <
                  FavprogramData.length +
                      FavexpertData.length +
                      FavhealthPediaData.length) {
                final healthPediaIndex =
                    index - (FavprogramData.length + FavexpertData.length);
                final healthPediaData = FavhealthPediaData[healthPediaIndex];
                return FavProgramCardView(
                  id: healthPediaData.id!,
                  title: healthPediaData.title!,
                  expert: healthPediaData.expertName!,
                  expertDesignation: healthPediaData.category!,
                  expertImage: healthPediaData.expertImageUrl!,
                  fordeseases: healthPediaData.category!,
                  imageUrl: healthPediaData.bannerImageUrl!,
                  programCategory: healthPediaData.category!,
                );
              } else if (index <
                  FavprogramData.length +
                      FavexpertData.length +
                      FavhealthPediaData.length +
                      FavhealthPediaVedioData.length) {
                final healthPediaVedioIndex = index -
                    (FavprogramData.length +
                        FavexpertData.length +
                        FavhealthPediaData.length);
                final healthPediaVedioData =
                    FavhealthPediaVedioData[healthPediaVedioIndex];
                return FavProgramCardView(
                  id: healthPediaVedioData.id!,
                  title: healthPediaVedioData.blogTitle!,
                  expert: healthPediaVedioData.blogBy!,
                  expertDesignation: '',
                  expertImage: healthPediaVedioData.blogthumbnail!,
                  fordeseases: healthPediaVedioData.blogCategory!,
                  imageUrl: healthPediaVedioData.blogthumbnail!,
                  programCategory: '',
                );
              } else {
                final webinarIndex = index -
                    (FavprogramData.length +
                        FavexpertData.length +
                        FavhealthPediaData.length +
                        FavhealthPediaVedioData.length);
                final webinarData = FavWebinarData[webinarIndex];
                return FavProgramCardView(
                  id: webinarData.id!,
                  title: webinarData.webinarTitle!,
                  expert: webinarData.expertName!,
                  expertDesignation: webinarData.expertDesignation!,
                  expertImage: webinarData.expertImage!,
                  fordeseases: webinarData.webinarCategory!,
                  imageUrl: webinarData.image!,
                  programCategory: webinarData.webinarCategory!,
                );
              }
            },
          );
        },
      ),
    );
  }
}
