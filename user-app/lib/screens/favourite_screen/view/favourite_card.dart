// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/screens/favourite_screen/cubit/favourite_cubit.dart';
import 'package:yellow_squash/screens/favourite_screen/repository/favourite_repository.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

class FavProgramCardScreen extends StatelessWidget {
  const FavProgramCardScreen({
    required this.id,
    required this.title,
    required this.fordeseases,
    required this.expert,
    required this.expertDesignation,
    required this.expertImage,
    required this.imageUrl,
    required this.programCategory,
    super.key,
  });
  final String id;
  final String title;
  final String fordeseases;
  final String imageUrl;
  final String expert;
  final String expertDesignation;
  final String expertImage;
  final String programCategory;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(favouriteRepository()),
      child: FavProgramCardView(
        id: id,
        title: title,
        expert: expert,
        expertDesignation: expertDesignation,
        expertImage: expertImage,
        fordeseases: fordeseases,
        imageUrl: imageUrl,
        programCategory: programCategory,
      ),
    );
  }
}

class FavProgramCardView extends StatefulWidget {
  const FavProgramCardView({
    required this.id,
    required this.title,
    required this.fordeseases,
    required this.expert,
    required this.expertDesignation,
    required this.expertImage,
    required this.imageUrl,
    required this.programCategory,
    super.key,
  });

  final String id;
  final String title;
  final String fordeseases;
  final String imageUrl;
  final String expert;
  final String expertDesignation;
  final String expertImage;
  final String programCategory;

  @override
  State<FavProgramCardView> createState() => _FavProgramCardViewState();
}

class _FavProgramCardViewState extends State<FavProgramCardView> {
  final userData = StorageManager.getUserData();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavouriteCubit, FavouriteState>(
      listener: (context, state) {
        if (state is MakeFavLoaded) {
          logs(state.response.message);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(left: 4.h, right: 4.h, top: 10.h),
          child: SizedBox(
            height: 200.h,
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   // ignore: inference_failure_on_instance_creation
                  //   MaterialPageRoute(
                  //     builder: (context) => ProgramDescriptionScreen(
                  //       imageUrl: widget.programData.imageUrl!,
                  //       programId: widget.programData.id!,
                  //       userId: userData!.id!,
                  //       profileId: widget.profileId,
                  //     ),
                  //   ),
                  // );
                },
                child: SizedBox(
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CustomNetworkImageView(
                        imagePath: widget.imageUrl,
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
                                        widget.title,
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
                                    // IconButton(
                                    //   icon: Icon(
                                    //     DataManager.shared.programIdsList
                                    //             .contains(widget.id)
                                    //         ? Icons.favorite_border
                                    //         : Icons.favorite,
                                    //     color: DataManager.shared.programIdsList
                                    //             .contains(widget.id)
                                    //         ? null
                                    //         : Colors.red,
                                    //   ),
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       if (DataManager.shared.programIdsList
                                    //           .contains(
                                    //         widget.id,
                                    //       )) {
                                    //         DataManager.shared.programIdsList
                                    //             .remove(widget.id);
                                    //       } else {
                                    //         DataManager.shared.programIdsList
                                    //             .add(widget.id);
                                    //       }
                                    //       context
                                    //           .read<FavouriteCubit>()
                                    //           .makeFav(
                                    //             programId:
                                    //                 widget.id,
                                    //             UserId: userData!.id!,
                                    //           );
                                    //     });
                                    //   },
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      widget.expertImage,
                                      // widget.programData.expertImage!,
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
                                          'widget.programData.author',
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
                                          widget.expertDesignation,
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
                                  widget.fordeseases,
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
