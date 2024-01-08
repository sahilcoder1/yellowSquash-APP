// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/modules/di.dart';

class GuestHealthCard extends StatelessWidget {
  const GuestHealthCard({
    required this.healthData,
    super.key,
  });

  final HealthPediaData healthData;

  @override
  Widget build(BuildContext context) {
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
                  imgUrl: healthData.bannerImageUrl!,
                  slug: healthData.slug!,
                  title: healthData.title!,
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
                  Container(
                    width: 105.w,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(healthData.bannerImageUrl!),
                        fit: BoxFit.fill,
                      ),
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
                                  icon: const Icon(
                                    Icons.favorite_border,
                                  ),
                                  onPressed: () {
                                    // ignore: inference_failure_on_function_invocation
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          // ignore:
                                          title: const Text(
                                            'Enhance your experience! Log in to unlock the Add to Favorites feature.',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                          content: const Text(
                                            'Do you want to proceed to the login page?',
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(); // Close the dialog
                                                getIt<AppRouter>().replaceAll(
                                                  [const LoginRoute()],
                                                );
                                              },
                                              child: const Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pop(); // Close the dialog
                                              },
                                              child: const Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
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
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 38.h,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    healthData.expertImageUrl!,
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
