// ignore_for_file: use_build_context_synchronously, flutter_style_todos
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/my_program/cubit/my_program_cubit.dart';
import 'package:yellow_squash/screens/my_program/repository/myprogram_repository.dart';
import 'package:yellow_squash/screens/my_program/view/my_program_card.dart';
import 'package:yellow_squash/utils/common_widgets/Myprograms_screen.dart';
import 'package:yellow_squash/utils/common_widgets/fade_animation.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class MyprogramPurchased extends StatelessWidget {
  const MyprogramPurchased({required this.userprofileId, super.key});
  final String userprofileId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyProgramCubit(MyProgramRepository()),
      child: ProgramPurchasedView(
        userprofileId: userprofileId,
      ),
    );
  }
}

class ProgramPurchasedView extends StatefulWidget {
  const ProgramPurchasedView({required this.userprofileId, super.key});
  final String userprofileId;

  @override
  State<ProgramPurchasedView> createState() => _ProgramPurchasedViewState();
}

class _ProgramPurchasedViewState extends State<ProgramPurchasedView> {
  final user = StorageManager.getUserData();
  Future<void> _refreshData() async {
    await context.read<MyProgramCubit>().getMyProfileProgram(userId: user!.id!);
    await context
        .read<MyProgramCubit>()
        .getMyProgram(profileId: widget.userprofileId, userId: user!.id!);
  }

  @override
  void initState() {
    context
        .read<MyProgramCubit>()
        .getMyProgram(profileId: widget.userprofileId, userId: user!.id!);
    super.initState();
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
          'My Programs',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: BlocConsumer<MyProgramCubit, MyProgramState>(
        listener: (context, state) {
          if (state is MyprogramProfileLoaded) {
            //  userprofileId = state.response.data![0].profileId;
            logs(state.response.data);
          }
        },
        builder: (context, state) {
          // if (state is ErrorState) {
          //   toast('Slow or No internet connection');
          // }
          if (state is Loading) {
            return const LoadingIndicator(show: true);
          }
          if (state is MyprogramLoaded) {
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
                                          labelText: 'Search your programs',
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
                                              data.title!
                                                  .toLowerCase()
                                                  .contains(
                                                    searchQuery.toLowerCase(),
                                                  )) &&
                                          (selectedCategories.isEmpty ||
                                              isSimilarCategory(
                                                data.title!,
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
                                        const Text(
                                          'Purchased Program Not Found',
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                if (filteredExperts.isNotEmpty) {
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: filteredExperts.length,
                                    itemBuilder: (context, index) {
                                      final data = filteredExperts[index];
                                      return FadeAnimation(
                                        delay: 0.3,
                                        direction: index.isEven
                                            ? AniDirection.left
                                            : AniDirection.right,
                                        child: MyProgramCard(
                                          myprogramData: data,
                                          profileId: widget.userprofileId,
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  return const Text('Empty');
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
                                            child: MyProgramCard(
                                              myprogramData: data,
                                              profileId: widget.userprofileId,
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
          return const MyProgramScreen();
        },
      ),
    );
  }
}
