// ignore_for_file: always_use_package_imports

import 'package:flutter/material.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/my_program.dart';
import 'package:yellow_squash/modules/di.dart';

import '../../../utils/services/storage_manager.dart';

class MyProgramCard extends StatelessWidget {
  const MyProgramCard({
    required this.myprogramData,
    required this.profileId,
    super.key,
  });

  final MyProgramData myprogramData;
  final String profileId;

  @override
  Widget build(BuildContext context) {
    // final favoritesProvider = Provider.of<FavoritesProvider>(context);
    // final isFavorite = favoritesProvider.isFavoriteWebinar(webinarData);
    final user = StorageManager.getUserData();
    return Padding(
      padding: const EdgeInsets.only(right: 3, top: 13),
      child: SizedBox(
        height: 200,
        child: Card(
          elevation: 24,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            onTap: () {
              getIt<AppRouter>().push(
                ProgramDescriptionRoute(
                  programId: myprogramData.id!,
                  userId: user!.id!,
                  imageUrl: myprogramData.imageUrl!,
                  profileId: profileId,
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
                    width: 125,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(myprogramData.imageUrl!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
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
                                    myprogramData.programCategory!,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(
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
                                //     isFavorite
                                //         ? Icons.favorite
                                //         : Icons.favorite_border,
                                //     color: isFavorite ? Colors.red : null,
                                //   ),
                                //   onPressed: () {
                                //     favoritesProvider
                                //         .toggleFavoriteWebinar(webinarData);
                                //   },
                                // ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    NetworkImage(myprogramData.expertImage!),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      myprogramData.expert!,
                                      style: const TextStyle(
                                        color: Color.fromRGBO(
                                          15,
                                          166,
                                          84,
                                          1,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      myprogramData.expertDesignation!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
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
