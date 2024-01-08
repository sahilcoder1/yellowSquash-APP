import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/models/webinars_description.dart';


class ExpertCardWebinar extends StatelessWidget {
  const ExpertCardWebinar({
    required this.expertData,
    super.key,
  });

  final WebinarDescriptionData expertData;

  @override
  Widget build(BuildContext context) {
  
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 10),
      child: SizedBox(
        height: 190.h,
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            onTap: () {
              // getIt<AppRouter>().push(
              //   ExpertDescriptionRoute(
              //     id: expertData.id!,
              //     isFavorite: isFavorite,
              //   ),
              // );
            },
            child: SizedBox(
              height: 198.h,
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
                        image: NetworkImage(expertData.expertImage!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  // Right-side text
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    expertData.expertCategory!,
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
                                // IconButton(
                                //   icon: Icon(
                                //     isFavorite
                                //         ? Icons.favorite
                                //         : Icons.favorite_border,
                                //     color: isFavorite ? Colors.red : null,
                                //   ),
                                //   onPressed: () {
                                //     favoritesProvider
                                //         .toggleFavoriteWebinarDescription(
                                //       expertData,
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                          ),
                          Text(
                            expertData.expertName!,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                expertData.expertDesignation!,
                                style: TextStyle(
                                  color: const Color.fromRGBO(15, 166, 84, 1),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                expertData.expertDescription!,
                                style: const TextStyle(
                                  color: Color.fromRGBO(124, 123, 123, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 15,
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
