// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

class GuestUpComingProgramCard extends StatelessWidget {
  const GuestUpComingProgramCard({
    required this.upcomingProgramData,
    super.key,
  });
  final UpcomingProgramData upcomingProgramData;
  @override
  Widget build(BuildContext context) {
    final user = StorageManager.getUserData();
    return GestureDetector(
      onTap: () {
        getIt<AppRouter>().push(
          GuestProgramDescriptionRoute(
            imageUrl: '',
            programId: upcomingProgramData.programId!,
            userId: '',
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: SizedBox(
          width: 190,
          child: Card(
            elevation: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNetworkImageView(
                  imagePath: upcomingProgramData.imageUrl!,
                  // width: 105.w,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Starts from ${upcomingProgramData.startDate}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(124, 123, 123, 1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        upcomingProgramData.title!,
                        style: const TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        upcomingProgramData.expert!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
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
