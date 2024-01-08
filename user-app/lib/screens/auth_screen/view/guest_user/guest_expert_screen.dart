// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_expert_card.dart';
import 'package:yellow_squash/screens/expert_screen/cubit/expert_cubit.dart';
import 'package:yellow_squash/screens/expert_screen/repository/expert_repository.dart';
import 'package:yellow_squash/utils/common_widgets/fade_animation.dart';
import 'package:yellow_squash/utils/common_widgets/program_shimmer.dart';
import 'package:yellow_squash/utils/logs.dart';

@RoutePage()
class GuestExpertScreen extends StatelessWidget {
  const GuestExpertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpertCubit(ExpertRepository()),
      child: const ExpertView(),
    );
  }
}

class ExpertView extends StatefulWidget {
  const ExpertView({super.key});

  @override
  State<ExpertView> createState() => _ExpertViewState();
}

class _ExpertViewState extends State<ExpertView> {
  Future<void> _refreshData() async {
    await context.read<ExpertCubit>().getExperts();
  }

  String searchQuery = '';
  List<String> categories = [];
  Set<String> selectedCategories = <String>{};
  bool isSimilarCategory(String expertCategory) {
    for (final selectedCategory in selectedCategories) {
      for (var i = 0; i < expertCategory.length; i++) {
        if (selectedCategory.contains(expertCategory[i])) {
          return true;
        }
      }
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    fetchCategories();
    context.read<ExpertCubit>().getExperts();
  }

  Future<void> fetchCategories() async {
    final state = context.read<ExpertCubit>().state;
    if (state is ExpertsLoaded) {
      // Assuming categories are stored in state.response.category
      categories = state.response.category!;
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

    // ignore: inference_failure_on_function_invocation
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
                                logs(category);
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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().pop();
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Experts',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: BlocConsumer<ExpertCubit, ExpertState>(
        listener: (context, state) {
          
        },
        builder: (context, state) {
          if (state is ErrorState) {
            toast('Slow or No internet connection');
          }
          if (state is Loading) {
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
          if (state is ExpertsLoaded) {
            return RefreshIndicator(
              onRefresh: _refreshData,
              color: Colors.amber,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                          labelText: 'Search Experts',
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
                          Expanded(
                            child: Builder(
                              builder: (context) {
                                final filteredExperts = state.response.data!
                                    .where(
                                      (data) =>
                                          (searchQuery.isEmpty ||
                                              data.expertCategory!
                                                  .toLowerCase()
                                                  .contains(
                                                    searchQuery.toLowerCase(),
                                                  )) &&
                                          (selectedCategories.isEmpty ||
                                              isSimilarCategory(
                                                data.expertCategory!,
                                              )),
                                    )
                                    .toList();
                                if (filteredExperts.isEmpty &&
                                    (searchQuery.isNotEmpty ||
                                        selectedCategories.isNotEmpty)) {
                                  return Center(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/not.png',
                                          width: 230,
                                          height: 240,
                                        ),
                                        const Text('Expert Not Found'),
                                      ],
                                    ),
                                  );
                                }

                                return filteredExperts.isEmpty
                                    ? const Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: filteredExperts.length,
                                        itemBuilder: (context, index) {
                                          final data = filteredExperts[index];
                                          return FadeAnimation(
                                            delay: 0.3,
                                            direction: index.isEven
                                                ? AniDirection.left
                                                : AniDirection.right,
                                            child: GuestExpertCard(
                                              expertData: data,
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
