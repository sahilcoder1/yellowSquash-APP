import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/screens/description_screen/view/program_description_screen.dart';
import 'package:yellow_squash/screens/favourite_screen/cubit/favourite_cubit.dart';
import 'package:yellow_squash/screens/favourite_screen/repository/favourite_repository.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/common_widgets/fav_provider.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

class ProgramCardScreen extends StatelessWidget {
  const ProgramCardScreen({
    required this.programData,
    required this.profileId,
    super.key,
  });
  final ProgramData programData;
  final String profileId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(favouriteRepository()),
      child: ProgramCardView(
        profileId: profileId,
        programData: programData,
      ),
    );
  }
}

class ProgramCardView extends StatefulWidget {
  const ProgramCardView({
    required this.programData,
    required this.profileId,
    super.key,
  });

  final ProgramData programData;
  final String profileId;

  @override
  State<ProgramCardView> createState() => _ProgramCardViewState();
}

class _ProgramCardViewState extends State<ProgramCardView> {
  final userData = StorageManager.getUserData();
  // List<String>? programIds;

  @override
  void initState() {
    context.read<FavouriteCubit>().getFav(UserId: userData!.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    // Check if the expert is in favorites
    final isFavorite =
        favoritesProvider.favoritePrograms.contains(widget.programData);
    return BlocBuilder<FavouriteCubit, FavouriteState>(
      builder: (context, state) {
        if (state is MakeFavLoaded) {
          logs(state.response.message);
        }

        return Padding(
          padding: EdgeInsets.only(left: 4.h, right: 4.h, top: 10.h),
          child: SizedBox(
            height: 250.h,
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    // ignore: inference_failure_on_instance_creation
                    MaterialPageRoute(
                      builder: (context) => ProgramDescriptionScreen(
                        imageUrl: widget.programData.imageUrl!,
                        programId: widget.programData.id!,
                        userId: userData!.id!,
                        profileId: widget.profileId,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomNetworkImageView(
                        imagePath: widget.programData.imageUrl!,
                        width: 125.w,
                        height: double.infinity,
                      ),
                      SizedBox(width: 5.w),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        widget.programData.programCategory!,
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(
                                            124,
                                            123,
                                            123,
                                            1,
                                          ),
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: isFavorite ? Colors.red : null,
                                      ),
                                      onPressed: () {
                                        // Toggle the expert as favorite
                                        if (isFavorite) {
                                          favoritesProvider.removeFromFavorites(
                                            widget.programData,
                                          );
                                        } else {
                                          favoritesProvider.addToFavorites(
                                            widget.programData,
                                          );
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      widget.programData.expertImage!,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.programData.author!,
                                          style: TextStyle(
                                            color: const Color.fromRGBO(
                                              15,
                                              166,
                                              84,
                                              1,
                                            ),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          widget.programData.expertDesignation!,
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Flexible(
                                child: Text(
                                  widget.programData.title!,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
