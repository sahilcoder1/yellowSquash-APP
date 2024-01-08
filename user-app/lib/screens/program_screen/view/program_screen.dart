import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/program_screen/cubit/program_cubit_cubit.dart';
import 'package:yellow_squash/screens/program_screen/repository/program_repository.dart';
import 'package:yellow_squash/utils/common_widgets/fade_animation.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/program_card.dart';
import 'package:yellow_squash/utils/common_widgets/program_shimmer.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/data_manager.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class ProgramsScreen extends StatelessWidget {
  const ProgramsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProgramCubit(ProgramRepository()),
      child: const ProgramView(),
    );
  }
}

class ProgramView extends StatefulWidget {
  const ProgramView({super.key});

  @override
  State<ProgramView> createState() => _ProgramViewState();
}

class _ProgramViewState extends State<ProgramView> {
  final user = StorageManager.getUserData();
  List<String> programIdsList = [];
  final programScreenData = List<ProgramData>.empty(growable: true);

  bool isFavorite = false;
  // ignore: non_constant_identifier_names
  String UserProfileData = 'guest';
  Future<void> _refreshData() async {
    await context.read<ProgramCubit>().getPrograms();
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
    context.read<ProgramCubit>().getPrograms();
    context.read<ProgramCubit>().getSwitchProfileData(userId: user!.id!);

    fetchCategories();
  }

  Future<void> fetchCategories() async {
    final state = context.read<ProgramCubit>().state;
    if (state is ProgramsLoaded) {
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
    await fetchCategories();
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
          'Programs',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: BlocConsumer<ProgramCubit, ProgramCubitState>(
        listener: (context, state) {
          if (state is SwitchProfiledataLoaded) {
            logs(state.response.data!.length);
            UserProfileData = state.response.data![0].profileId!;
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: const Color.fromARGB(255, 255, 255, 255),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ProgramCardShimmer();
                },
              ),
            );
          }
          if (state is ProgramsLoaded) {
            logs(format: 'e', state.response.data);
            programScreenData
              ..clear()
              // ignore: cast_nullable_to_non_nullable
              ..addAll(state.response.data as Iterable<ProgramData>);
          }
          if (state is GetFavLoaded) {
            state.response.data!.programId!.map((item) {
              programIdsList.add(item.id!);
            }).toList();
            DataManager.shared.programIdsList = programIdsList;
          }
          // isFavorite = programIdsList.contains();
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
                          EdgeInsets.only(top: 10.h, left: 10.h, right: 10.h),
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
                                          labelText: 'Search Programs',
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
                                final filteredPrograms = programScreenData
                                    .where(
                                      (data) =>
                                          searchQuery.isEmpty ||
                                          data.programCategory!
                                              .toLowerCase()
                                              .contains(
                                                searchQuery.toLowerCase(),
                                              ),
                                    )
                                    .toList();

                                if (filteredPrograms.isEmpty &&
                                    searchQuery.isNotEmpty) {
                                  return Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/not.png',
                                          width: 210,
                                          height: 210,
                                        ),
                                        const Text('Programs Not Found'),
                                      ],
                                    ),
                                  );
                                }
                                return filteredPrograms.isEmpty
                                    ? const Center(
                                        child: LoadingIndicator(
                                          show: true,
                                        ),
                                      )
                                    : ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: filteredPrograms.length,
                                        itemBuilder: (context, index) {
                                          final data = filteredPrograms[index];
                                          return FadeAnimation(
                                            delay: 0.3,
                                            direction: index.isEven
                                                ? AniDirection.left
                                                : AniDirection.right,
                                            child: ProgramCardScreen(
                                              programData: data,
                                              profileId: UserProfileData,
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
        },
      ),
    );
  }
}
