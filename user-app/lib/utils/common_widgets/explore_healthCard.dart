import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';

class ExploreHealthCard extends StatelessWidget {
  const ExploreHealthCard({
    required this.healthPediaData,
    super.key,
  });
  final HealthPediaData healthPediaData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().push(
          HealthDescriptionRoute(
            slug: healthPediaData.slug!,
            title: healthPediaData.title!,
            imgUrl: healthPediaData.bannerImageUrl!,
            id: healthPediaData.id!,
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: SizedBox(
          width: 355.w,
          height: 335.h,
          child: Card(
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNetworkImageView(
                  imagePath: healthPediaData.bannerImageUrl!,
                  height: 162.h,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        healthPediaData.title!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: '✍🏻 By ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: healthPediaData.expertName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
