import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:shimmer/shimmer.dart';

import 'package:yellow_squash/utils/common_widgets/fav_provider.dart';

class WebinarCardShimmer extends StatelessWidget {
  const WebinarCardShimmer({
    required this.webinarData,
    super.key,
  });

  final WebinarData webinarData;

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final isFavorite = favoritesProvider.favoriteWebinars.contains(webinarData);

    return Padding(
      padding: const EdgeInsets.only(right: 3, top: 13),
      child: SizedBox(
        height: 200,
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            onTap: () {
              getIt<AppRouter>()
                  .push(WebinarDescriptionRoute(id: webinarData.id!));
            },
            child: SizedBox(
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Left-side image
                  Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 125,
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
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
                                  child: Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Text(
                                      webinarData.webinarCategory!,
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
                                          .removeFromWebinarDataFavorites(
                                        webinarData,
                                      );
                                    } else {
                                      favoritesProvider
                                          .addToWebinarDataFavorites(
                                        webinarData,
                                      );
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              // CircleAvatar(
                              //   radius: 30,
                              //   backgroundImage: Shimmer.fromColors(
                              //     baseColor: Colors.grey[300]!,
                              //     highlightColor: Colors.grey[100]!,
                              //     child: NetworkImage(webinarData.expertImage!),
                              //   ),
                              // ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      webinarData.expertName!,
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
                                      webinarData.expertDesignation!,
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
                          Flexible(
                            child: Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Text(
                                webinarData.webinarTitle!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
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
