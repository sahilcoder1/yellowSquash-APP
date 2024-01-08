// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/programs_description_response.dart';
import 'package:yellow_squash/models/reviews_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/description_screen/cubit/program_description_cubit_cubit.dart';
import 'package:yellow_squash/screens/description_screen/repository/program_description_repository.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/common_widgets/rating.dart';
import 'package:yellow_squash/utils/common_widgets/videoPlayerWidget.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class ProgramDescriptionScreen extends StatelessWidget {
  const ProgramDescriptionScreen({
    required this.programId,
    required this.userId,
    required this.imageUrl,
    required this.profileId,
    super.key,
  });
  final String programId;
  final String userId;
  final String imageUrl;
  final String profileId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          ProgramDescriptionCubitCubit(ProgramDescriptionRepository()),
      child: ProgramDescriptionView(
        programId: programId,
        userId: userId,
        imageUrl: imageUrl,
        profileId: profileId,
      ),
    );
  }
}

class ProgramDescriptionView extends StatefulWidget {
  const ProgramDescriptionView({
    required this.programId,
    required this.userId,
    required this.imageUrl,
    required this.profileId,
    super.key,
  });
  final String programId;
  final String userId;
  final String imageUrl;
  final String profileId;
  @override
  State<ProgramDescriptionView> createState() => _ProgramDescriptionViewState();
}

class _ProgramDescriptionViewState extends State<ProgramDescriptionView> {
  final user = StorageManager.getUserData();
  bool? reviewEmpty;
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
  final ScrollController _scrollController = ScrollController();
  final programDescriptionData =
      List<ProgramDescriptionData>.empty(growable: true);
  final programReviewsData = List<ProrgramReviewData>.empty(growable: true);
  // late ProgramDescriptionData programDescriptionData;
  int price = 0;
  @override
  void initState() {
    super.initState();
    context.read<ProgramDescriptionCubitCubit>().getProgramsDescription(
          programid: widget.programId,
          UserId: widget.userId,
          profileId: widget.profileId,
        );
    //   context
    //       .read<ProgramDescriptionCubitCubit>()
    //       .getReviews(programId: widget.programId);
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
      ),
      body: BlocConsumer<ProgramDescriptionCubitCubit,
          ProgramDescriptionCubitState>(
        listener: (context, state) {
          if (state is ProgramDiscountLoaded) {
            setState(() {
              final discountAmount = state.response.discountedPrice!.price! *
                  (int.parse(state.response.discountedPrice!.discount!) / 100);
              price = state.response.discountedPrice!.price! -
                  discountAmount.toInt();
            });
            logs(price);
          }
        },
        builder: (context, state) {
          if (state is ErrorState) {
            // toast('No program found');
          }
          if (state is Loading) {
            return const LoadingIndicator(
              // ignore:
              show: true,
            );
          }
          // if (state is ProgramReviewsLoaded) {
          //   // logs(state.response.data!.programReview!.isNotEmpty, format: 'e');

          // }
          if (state is ProgramsDescriptionLoaded) {
            programDescriptionData.add(state.response.data!);
            logs(state.response.data);
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
            // formattedDateTime = formatter.fstructureime);
          }
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250.h,
                      width: double.infinity,
                      child: CustomVideoPlayer(
                        videoUrl:
                            programDescriptionData[0].programintovideourl!,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Program Starts On 05-Aug-2023'),
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
                            '${programDescriptionData[0].rating} Reviews',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        programDescriptionData[0].title!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'By  ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: programDescriptionData[0].expert,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (price <= 0)
                            Text(
                              'Select a Plan for Price',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            )
                          else
                            Text(
                              '₹$price',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          SizedBox(width: 10.w),
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
                            context
                                .read<ProgramDescriptionCubitCubit>()
                                .getProgramDurationAndPrice(
                                  programid: widget.programId,
                                  userId: widget.userId,
                                  type: selectedPlan,
                                  planDuration: value,
                                );
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
                    // if (structure[0].startDate != null)
                    //   AlreadyPurchasedButton(
                    //     buttonText: 'Already purchased',
                    //     width: 600.w,
                    //     onPressed: () {},
                    //   )
                    // else
                    CustomButton(
                      onPressed: () {
                        if (price <= 0) {
                          toast('Please Select a Plan to proceed');
                          // } else if (user!.isParent != true) {
                          //   const SwitchToBuy().showSwitchToBuyDialog(context);
                          // }
                        } else {
                          getIt<AppRouter>().push(
                            CheckOutPageRoute(
                              author: programDescriptionData[0].expert!,
                              imageUrl: widget.imageUrl,
                              price: price,
                              title: programDescriptionData[0].title!,
                              patientDetail: selectedDuration!,
                              planSubtype: selectedPlan!,
                              programid: programDescriptionData[0].id!,
                            ),
                          );
                        }
                      },
                      buttonText: 'Buy Program',
                      width: 600.w,
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
                                  programDescriptionData[0].howItWorks!,
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
                                padding: EdgeInsets.only(left: 5.h, right: 5.h),
                                child: ExpansionTile(
                                  title: const Text(
                                    'Let The Data Speak',
                                  ),
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 30,
                                                  ),
                                                  child: Html(
                                                    data:
                                                        programDescriptionData[
                                                                0]
                                                            .overview,
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
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10.w,
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
                                                      top: 50,
                                                    ),
                                                    child: Text(
                                                      '${programDescriptionData[0].enrolledUser}+',
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
                                        SizedBox(
                                          width: 10.w,
                                        ),
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
                                                      '${programDescriptionData[0].overview!}+',
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
                    if (structure[0].startDate == null)
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
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  children: [
                                    for (final structureItem in structure)
                                      ExpansionTile(
                                        title: Text(
                                          '${structureItem.sessionTitle}',
                                        ),
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(20.h),
                                            child: const Column(
                                              children: [
                                                Text(
                                                  'Please Purchase this Program to access sessions !',
                                                ),
                                                Text(
                                                  '',
                                                  // structureItem.description!,
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
                      )
                    else
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
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  children: [
                                    for (final structureItem in structure)
                                      ExpansionTile(
                                        title: Text(
                                          '${structureItem.sessionTitle} - ${structureItem.sessionDuration} ',
                                        ),
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(20.h),
                                            child: Column(
                                              children: [
                                                Text(
                                                  structureItem.sessionTitle!,
                                                ),
                                                const Text(
                                                  '',
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
                                controller: _scrollController,
                                shrinkWrap: true,
                                itemCount: faqs.length,
                                itemBuilder: (context, index) {
                                  if (index >= 0 && index < faqs.length) {
                                    // ignore: non_constant_identifier_names
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
                                  } else {
                                    return Container();
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
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
