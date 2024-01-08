// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';

import 'package:yellow_squash/utils/common_widgets/fav_provider.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({
    required this.healthData,
    super.key,
  });

  final HealthPediaData healthData;

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final isFavorite =
        favoritesProvider.favoriteHealthPedia.contains(healthData);
    return Padding(
      padding: EdgeInsets.only(left: 4.h, right: 4.h, top: 10.h),
      child: SizedBox(
        height: 190.h,
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            onTap: () {
              getIt<AppRouter>().push(
                HealthDescriptionRoute(
                  slug: healthData.slug!,
                  title: healthData.title!,
                  imgUrl: healthData.bannerImageUrl!,
                  id: healthData.id!,
                ),
              );
            },
            child: SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Left-side image
                  SizedBox(
                    width: 105.w,
                    child: CustomNetworkImageView(
                      imagePath: healthData.bannerImageUrl != null
                          ? healthData.bannerImageUrl!
                          : '',
                      width: 105.w,
                      dBorderRadius: 16,
                      height: double.infinity,
                    ),
                  ),

                  SizedBox(width: 5.w),
                  // Right-side text
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
                                    healthData.category!,
                                    style: TextStyle(
                                      fontSize: 16.sp,
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
                                      favoritesProvider
                                          .removeToHealthPediaDataFavorites(
                                        healthData,
                                      );
                                    } else {
                                      favoritesProvider
                                          .addToHealthPediaDataFavorites(
                                        healthData,
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Flexible(
                            child: Text(
                              'by ${healthData.title}',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 38.h,
                                width: 38.w,
                                child: CircleAvatar(
                                  radius: 80,
                                  child: CustomNetworkImageView(
                                    imagePath: healthData.expertImageUrl!,
                                    dBorderRadius: 80,
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'by ${healthData.expertName}',
                                      style: TextStyle(
                                        color: const Color.fromRGBO(
                                          15,
                                          166,
                                          84,
                                          1,
                                        ),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
  }
}
