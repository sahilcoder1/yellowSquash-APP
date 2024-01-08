// ignore_for_file: lines_longer_than_80_chars, unnecessary_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/expert_description_screen%20/cubit/expert_description_cubit.dart';
import 'package:yellow_squash/screens/expert_description_screen%20/repository/expert_description_repository.dart';

import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';

@RoutePage()
class ExpertDescriptionScreen extends StatelessWidget {
  const ExpertDescriptionScreen({
    required this.id,
    this.isFavorite,
    this.expertData,
    super.key,
  });
  final String id;
  final bool? isFavorite;
  final ExpertData? expertData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ExpertDescriptionCubit(ExpertDescriptionRepository()),
      child: ExpertDescriptionView(
        id: id,
        isFavorite: isFavorite,
        expertData: expertData,
      ),
    );
  }
}

class ExpertDescriptionView extends StatefulWidget {
  const ExpertDescriptionView({
    required this.id,
    this.isFavorite,
    this.expertData,
    super.key,
  });
  final String id;
  final bool? isFavorite;
  final ExpertData? expertData;

  @override
  State<ExpertDescriptionView> createState() => _ExpertDescriptionViewState();
}

class _ExpertDescriptionViewState extends State<ExpertDescriptionView> {
  @override
  void initState() {
    context.read<ExpertDescriptionCubit>().getExpertDescription(Id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            getIt<AppRouter>().pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          // IconButton(
          //   icon: Icon(
          //     isFavorite ? Icons.favorite : Icons.favorite_border,
          //     color: isFavorite ? Colors.red : Colors.black,
          //   ),
          //   onPressed: () {
          //     favoritesProvider.toggleFavoriteExpert(widget.expertData!);
          //   },
          // ),
          IconButton(
            onPressed: () {
              // ignore: cast_nullable_to_non_nullable
              final box = context.findRenderObject() as RenderBox;
              Share.share(
                'Check out this program description: programDescriptionUrl',
                subject: 'Expert Description',
                sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
              );
            },
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: BlocConsumer<ExpertDescriptionCubit, ExpertDescriptionState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(
              show: true,
            );
          }
          if (state is ErrorState) {
            toast('No Data Found');
          }

          if (state is ExpertsDescriptionLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity, // Ensures full width
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150
                                .w, // Adjust the width of the container based on your preference
                            height: 150
                                .h, // Adjust the height of the container based on your preference
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage(
                                  state.response.data!.expertProfile!,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.response.data!.expertName!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    state.response.data!.expertDesignation!,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    state.response.data!.expertCategory!,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      'About the Expert',
                      style: TextStyle(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Text(
                      state.response.data!.expertDescription!,
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 304,
                    ),
                  ),
                ],
              ),
            );
          }
          return const LoadingIndicator(
            show: true,
          );
        },
      ),
    );
  }
}
