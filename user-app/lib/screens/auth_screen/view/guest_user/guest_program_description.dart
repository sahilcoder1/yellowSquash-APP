// ignore_for_file: lines_longer_than_80_chars, inference_failure_on_function_invocation, non_constant_identifier_names

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_plus/share_plus.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/programs_description_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/description_screen/cubit/program_description_cubit_cubit.dart';
import 'package:yellow_squash/screens/description_screen/repository/program_description_repository.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/common_widgets/rating.dart';
import 'package:yellow_squash/utils/common_widgets/videoPlayerWidget.dart';
import 'package:yellow_squash/utils/logs.dart';

@RoutePage()
class GuestProgramDescriptionScreen extends StatelessWidget {
  const GuestProgramDescriptionScreen({
    required this.programId,
    required this.userId,
    required this.imageUrl,
    super.key,
  });
  final String programId;
  final String userId;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ProgramDescriptionCubitCubit(ProgramDescriptionRepository()),
      child: ProgramDescriptionView(
        programId: programId,
        userId: userId,
        imageUrl: imageUrl,
      ),
    );
  }
}

class ProgramDescriptionView extends StatefulWidget {
  const ProgramDescriptionView({
    required this.programId,
    required this.userId,
    required this.imageUrl,
    super.key,
  });
  final String programId;
  final String userId;
  final String imageUrl;

  @override
  State<ProgramDescriptionView> createState() => _ProgramDescriptionViewState();
}

class _ProgramDescriptionViewState extends State<ProgramDescriptionView> {
  String? selectedPlan;
  String? selectedDuration;
  String? formattedDateTime;
  List<String> planOptions = ['Educational', 'Treatment'];
  List<String> durationOptions = [];
  Map<String, List<String>> durationOptionsMap = {
    'Educational': ['Individual'],
    'Treatment': [
      'Individual',
      '2 Member Plan',
      '3 Member Plan',
      '4 Member Plan',
      '5 Member Plan',
    ],
  };

  final faqs = List<Faq>.empty(growable: true);
  final anslist = List<String?>.empty(growable: true);
  final structure = List<Structure>.empty(growable: true);
  late ProgramDescriptionData programDescriptionData;
  int price = 0;
  @override
  void initState() {
    super.initState();
    context.read<ProgramDescriptionCubitCubit>().getProgramsDescription(
          programid: widget.programId,
          UserId: 'guest',
          profileId: 'guest',
        );
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
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text(
                      'To use add to favorites, You have to login!',
                    ),
                    content: const Text(
                      'Do you want to proceed to the login page?',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                          // Navigate to the login page
                          getIt<AppRouter>().replaceAll([const LoginRoute()]);
                        },
                        child: const Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: const Text(
                          'No',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              // ignore: cast_nullable_to_non_nullable
              final box = context.findRenderObject() as RenderBox;
              Share.share(
                'Check out this program description: programDescriptionUrl',
                subject: 'Program Description',
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
      body: BlocConsumer<ProgramDescriptionCubitCubit,
          ProgramDescriptionCubitState>(
        listener: (context, state) {
          if (state is ProgramDiscountLoaded) {
            setState(() {
              price = state.response.discountedPrice!.price!;
            });
            logs(price);
          }
        },
        builder: (context, state) {
          if (state is ErrorState) {
            toast('No program found');
          }

          if (state is Loading) {
            return const LoadingIndicator(
              // ignore: unnecessary_type_check
              show: true,
            );
          }

          if (state is ProgramsDescriptionLoaded) {
            // logs(state.response.data!.faq);
            programDescriptionData = state.response.data!;
            if (state.response.data!.faq != null &&
                state.response.data!.faq!.isNotEmpty) {
              faqs.addAll(state.response.data!.faq!);
            }
            if (state.response.data!.structure != null &&
                state.response.data!.structure!.isNotEmpty) {
              structure.addAll(state.response.data!.structure!);
            }

            // final formatter = DateFormat('dd MMMM yyyy');
            // final apiDateTimeString = state.response.data!.startDate.toString();

            // final apiDateTime = DateTime.parse(apiDateTimeString);
            // formattedDateTime = formatter.format(apiDateTime);
          }
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: CustomVideoPlayer(
                        videoUrl: programDescriptionData.programintovideourl!,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Program Starts On 25-Aug-23'),
                          FiveStarRating(
                            rating: 5,
                            starSize: 20,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${programDescriptionData.rating} Reviews',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(programDescriptionData.title!),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(programDescriptionData.expert!),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Price is not available in Guest mode.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownButton<String>(
                          value: selectedPlan,
                          hint: const Text('Select Plan'),
                          onChanged: (value) {
                            setState(() {
                              selectedPlan = value;
                              selectedDuration = null;
                              durationOptions =
                                  durationOptionsMap[selectedPlan]!;
                            });
                          },
                          items: planOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        DropdownButton<String>(
                          value: selectedDuration,
                          hint: const Text('Duration'),
                          onChanged: (value) {
                            setState(() {
                              selectedDuration = value;
                            });
                            // context
                            //     .read<ProgramDescriptionCubitCubit>()
                            //     .getProgramDurationAndPrice(
                            //       programid: widget.programId,
                            //       userId: widget.userId,
                            //       type: selectedPlan,
                            //       planDuration: value,
                            //     );
                            toast('Only login user can Buy.');
                          },
                          items: durationOptions.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    CustomButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                'To Buy this Prorgam, You have to login',
                              ),
                              content: const Text(
                                'Do you want to proceed to the login page?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    // Navigate to the login page
                                    getIt<AppRouter>()
                                        .replaceAll([const LoginRoute()]);
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      buttonText: 'Buy Program',
                      width: 600,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ExpansionTileTheme(
                          data: ExpansionTileThemeData(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            iconColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: ExpansionTile(
                            title: const Text('How it Works?'),
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20.h),
                                child: Text(
                                  programDescriptionData.howItWorks!,
                                  style: TextStyle(fontSize: 16.h),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ExpansionTileTheme(
                          data: ExpansionTileThemeData(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            iconColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: ExpansionTile(
                            title: const Text('OverView'),
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 5.h, right: 5.h),
                                child: const ExpansionTile(
                                  title: Text(
                                    'What we Offer',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  right: 15.h,
                                  top: 10,
                                ),
                                child: ExpansionTile(
                                  title: const Text(
                                    'Let The Data Speak',
                                  ),
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 50.h,
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                199,
                                                58,
                                                52,
                                                1,
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 30,
                                                    ),
                                                    child: Text(
                                                      '${programDescriptionData.overview}+',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Batches',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        //participant
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 70.h,
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                199,
                                                58,
                                                52,
                                                1,
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 30,
                                                    ),
                                                    child: Text(
                                                      '${programDescriptionData.overview}+',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Participants',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),

                                        //Benefitted
                                        Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 55.h,
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                199,
                                                58,
                                                52,
                                                1,
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 30,
                                                    ),
                                                    child: Text(
                                                      '${programDescriptionData.overview}+',
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Benefitted',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ExpansionTileTheme(
                          data: ExpansionTileThemeData(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            iconColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: ExpansionTile(
                            title: const Text('Structure'),
                            children: [
                              ListView(
                                shrinkWrap: true,
                                children: [
                                  for (final structureItem in structure)
                                    ExpansionTile(
                                      title: Text(
                                        '${structureItem.sessionTitle} | ${structureItem.sessionTitle}',
                                      ),
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20.h),
                                          child: Column(
                                            children: [
                                              Text(
                                                structureItem.sessionTitle!,
                                              ),
                                              Text(
                                                structureItem.description!,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ExpansionTileTheme(
                          data: ExpansionTileThemeData(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            iconColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: ExpansionTile(
                            title: const Text('FAQs'),
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: faqs.length,
                                itemBuilder: (context, index) {
                                  if (index >= 0 && index < faqs.length) {
                                    final FaqItem = faqs[index];
                                    return ExpansionTile(
                                      title: Text(
                                        '${FaqItem.ques}',
                                      ),
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20.h),
                                          child: Text(FaqItem.ans!.join(',')),
                                        ),
                                      ],
                                    );
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                'To Buy this Prorgam, You have to login',
                              ),
                              content: const Text(
                                'Do you want to proceed to the login page?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                    // Navigate to the login page
                                    getIt<AppRouter>().push(const LoginRoute());
                                  },
                                  child: const Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: const Text(
                                    'No',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      buttonText: 'Buy Program',
                      width: 600,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
