// ignore_for_file: inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_program_description.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';

class GuestProgramCard extends StatelessWidget {
  const GuestProgramCard({
    required this.programData,
    super.key,
  });

  final ProgramData programData;

  @override
  Widget build(BuildContext context) {
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GuestProgramDescriptionScreen(
                    imageUrl: programData.imageUrl!,
                    programId: programData.id!,
                    userId: 'guest',
                  ),
                ),
              );
            },
            child: SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Left-side image
                  CustomNetworkImageView(
                    imagePath: programData.imageUrl!,
                    width: 125.w,
                    height: double.infinity,
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
                                    programData.programCategory!,
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
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
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
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(programData.expertImage!),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      programData.author!,
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
                                      programData.expertDesignation!,
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
                              programData.title!,
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
  }
}
