// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/health_pediavideo_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/videoPlayerWidget.dart';

class GuestHealthVideoCard extends StatelessWidget {
  const GuestHealthVideoCard({
    required this.healthData,
    super.key,
  });

  final HealthPediaVideoData healthData;
  void _showVideoPopup(BuildContext context) {
    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero, // Remove content padding
          content: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  healthData.blogTitle!,
                  style: const TextStyle(
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 200, // Set the maximum height for the video screen
                  width: double.infinity,
                  child: CustomVideoPlayer(
                    videoUrl:
                        healthData.blogVideo!, // Replace with your video URL
                  ),
                ),
                const SizedBox(
                  height: 16,
                ), // Add spacing between video and other content if needed
                // Add other content here if desired
              ],
            ),
          ),
        );
      },
    );
  }

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
          child: SizedBox(
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: 105.w,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(healthData.blogthumbnail!),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        child: IconButton(
                          icon: Icon(
                            Icons.play_circle_fill,
                            color: const Color.fromARGB(255, 102, 100, 100)
                                .withOpacity(0.7),
                            size: 58,
                          ),
                          onPressed: () {
                            _showVideoPopup(context);
                          },
                        ),
                      ),
                    ),
                  ],
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
                                  healthData.blogCategory!,
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
                                        title: const Text(
                                          'Enhance your experience! Log in to unlock the Add to Favorites feature.',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        content: const Text(
                                          'Do you want to proceed to the login page?',
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog
                                              // Navigate to the login page
                                              getIt<AppRouter>()
                                                  .push(const LoginRoute());
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
                            'by ${healthData.blogTitle}',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'by ${healthData.blogBy}',
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
    );
  }
}
