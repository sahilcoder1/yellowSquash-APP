// ignore_for_file: lines_longer_than_80_chars
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_healthPedia/guest_video_card.dart';
import 'package:yellow_squash/screens/health_pedia_videos/cubit/health_videos_cubit.dart';
import 'package:yellow_squash/screens/health_pedia_videos/repository/heallth_pedia_videos_repository.dart';
import 'package:yellow_squash/utils/common_widgets/fade_animation.dart';
import 'package:yellow_squash/utils/common_widgets/program_shimmer.dart';

@RoutePage()
class GuestHealthPediaVideoScreen extends StatelessWidget {
  const GuestHealthPediaVideoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HealthVideosCubit(HealthPediaVideoRepository()),
      child: const HealthPediaScreenView(),
    );
  }
}

class HealthPediaScreenView extends StatefulWidget {
  const HealthPediaScreenView({
    super.key,
  });

  @override
  State<HealthPediaScreenView> createState() => _HealthPediaScreenViewState();
}

class _HealthPediaScreenViewState extends State<HealthPediaScreenView> {
  Future<void> _refreshData() async {
    await context.read<HealthVideosCubit>().getHealthVideo();
  }

  String searchQuery = '';
  @override
  void initState() {
    context.read<HealthVideosCubit>().getHealthVideo();
    super.initState();
  }

  List<String> categories = [];
  String? blogVideo;
  Set<String> selectedCategories = <String>{};
  bool isSimilarCategory(String healthCategory) {
    for (final selectedCategory in selectedCategories) {
      for (var i = 0; i < healthCategory.length; i++) {
        if (selectedCategory.contains(healthCategory[i])) {
          return true;
        }
      }
    }
    return false;
  }

  Future<void> fetchCategories() async {
    final state = context.read<HealthVideosCubit>().state;
    if (state is HealthVideoLoaded) {
      // Assuming categories are stored in state.response.category
      categories = state.response.category!;
      blogVideo = state.response.data![0].blogVideo;
    }
  }

  void toggleCategorySelection(String category) {
    setState(() {
      if (selectedCategories.contains(category)) {
        selectedCategories.remove(category);
      } else {
        selectedCategories.add(category);
      }
    });
  }

  Future<void> showBottomSheet() async {
    await fetchCategories(); // Wait for categories to be fetched
    // ignore: inference_failure_on_function_invocation, use_build_context_synchronously
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Categories',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCategories.clear();
                                });
                              },
                              child: const Text(
                                'Clear All',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(categories.length, (index) {
                          final category = categories[index];
                          final isSelected =
                              selectedCategories.contains(category);

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                toggleCategorySelection(category);
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      isSelected ? Colors.green : Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                category,
                                style: TextStyle(
                                  color:
                                      isSelected ? Colors.green : Colors.black,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HealthVideosCubit, HealthVideosState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is Loading) {
            if (state is ErrorState) {
              toast('Slow or No internet connection');
            }
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 14,
                itemBuilder: (context, index) {
                  return const ProgramCardShimmer();
                },
              ),
            );
          }
          if (state is HealthVideoLoaded) {
            return RefreshIndicator(
              onRefresh: _refreshData,
              color: Colors.amber,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.maxWidth,
                        minHeight: constraints.maxHeight,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 10, left: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 53,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Card(
                                        elevation: 4,
                                        child: TextFormField(
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            labelText: 'Search HealthPedia',
                                            prefixIcon: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.search),
                                            ),
                                            border: const OutlineInputBorder(),
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              searchQuery = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Card(
                                    elevation: 14,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color:
                                            const Color.fromRGBO(68, 68, 68, 1),
                                        width: 80,
                                        height: double.infinity,
                                        child: TextButton(
                                          onPressed: showBottomSheet,
                                          child: const Text(
                                            'Category',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final filteredHealth = state.response.data!
                                      .where(
                                        (data) =>
                                            (searchQuery.isEmpty ||
                                                data.blogCategory!
                                                    .toLowerCase()
                                                    .contains(
                                                      searchQuery.toLowerCase(),
                                                    )) &&
                                            (selectedCategories.isEmpty ||
                                                isSimilarCategory(
                                                  data.blogCategory!,
                                                )),
                                      )
                                      .toList();
                                  if (filteredHealth.isEmpty &&
                                      (searchQuery.isNotEmpty ||
                                          selectedCategories.isNotEmpty)) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/not.png',
                                            width: 210,
                                            height: 210,
                                          ),
                                          const Text(
                                            'HealthPedia Video Not Found',
                                          ),
                                        ],
                                      ),
                                    );
                                  }

                                  return filteredHealth.isEmpty
                                      ? const Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: filteredHealth.length,
                                          itemBuilder: (context, index) {
                                            final data = filteredHealth[index];
                                            return FadeAnimation(
                                              delay: 0.3,
                                              direction: index.isEven
                                                  ? AniDirection.left
                                                  : AniDirection.right,
                                              child: GuestHealthVideoCard(
                                                healthData: data,
                                              ),
                                            );
                                          },
                                        );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
