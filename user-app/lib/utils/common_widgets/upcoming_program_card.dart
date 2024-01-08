import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/logs.dart';

import 'package:yellow_squash/utils/services/storage_manager.dart';

class UpComingProgramCard extends StatefulWidget {
  const UpComingProgramCard({
    required this.upcomingProgramData,
    required this.profileId,
    super.key,
  });
  final UpcomingProgramData upcomingProgramData;
  final String profileId;

  @override
  State<UpComingProgramCard> createState() => _UpComingProgramCardState();
}

class _UpComingProgramCardState extends State<UpComingProgramCard> {
  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('dd MMMM yyyy');
    final apiDateTimeString = widget.upcomingProgramData.startDate.toString();
    final apiDateTime = DateTime.parse(apiDateTimeString);
    final formattedDate = formatter.format(apiDateTime);
    final user = StorageManager.getUserData();
    logs(format: 'e', widget.upcomingProgramData.startDate);
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().push(
          ProgramDescriptionRoute(
            imageUrl: widget.upcomingProgramData.imageUrl!,
            programId: widget.upcomingProgramData.programId!,
            userId: user!.id!,
            profileId: widget.profileId,
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: SizedBox(
          width: 330.w,
          height: 300.h,
          child: Card(
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNetworkImageView(
                  height: 155.h,
                  width: double.infinity,
                  imagePath: widget.upcomingProgramData.imageUrl!,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.calendar_month),
                      RichText(
                        text: TextSpan(
                          text: '🗓️',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'formattedDate',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.upcomingProgramData.title!,
                        style: const TextStyle(
                          fontSize: 16,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: 'By  ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.upcomingProgramData.expert,
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
