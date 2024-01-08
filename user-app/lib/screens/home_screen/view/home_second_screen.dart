// ignore_for_file: lines_longer_than_80_chars, use_build_context_synchronously, library_prefixes, non_constant_identifier_names
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/models/user_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart'
    as user_Profiel_Cubit;
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/screens/home_screen/cubit/home_cubit.dart'
    as home_Cubit;
import 'package:yellow_squash/screens/home_screen/repository/home_repository.dart';
import 'package:yellow_squash/utils/common_widgets/app_drawer.dart';
import 'package:yellow_squash/utils/common_widgets/explore_healthCard.dart';
import 'package:yellow_squash/utils/common_widgets/knowexpert.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/upcoming_program_card.dart';
import 'package:yellow_squash/utils/common_widgets/upcoming_webinar_card.dart';
import 'package:yellow_squash/utils/common_widgets/video_crousel.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class YellowHome extends StatelessWidget {
  const YellowHome({
    super.key,
    // ignore:
    this.UserProfileData,
    this.profileName,
  });
  // ignore:
  final String? UserProfileData;
  final String? profileName;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => home_Cubit.HomeCubit(HomeRepository()),
        ),
        BlocProvider(
          create: (context) => UserProfileCubit(UserProfileRepository()),
        ),
      ],
      child: YellowView(
        UserProfileData: UserProfileData,
        profileName: profileName,
      ),
    );
  }
}

class YellowView extends StatefulWidget {
  const YellowView({
    super.key,
    this.UserProfileData,
    this.profileName,
  });
  final String? UserProfileData;
  final String? profileName;
  @override
  State<YellowView> createState() => _YellowViewState();
}

class _YellowViewState extends State<YellowView> {
  int closedCount = 0;
  final user = StorageManager.getUserData();
  String UserProfileId = 'guest';
  String userName = '';
  Future<void> _refreshData() async {
    await context.read<home_Cubit.HomeCubit>().getExperts();
    // await context.read<home_Cubit.HomeCubit>().getUpComingProgram(expert: '');
    // await context.read<home_Cubit.HomeCubit>().getUpcomingWebinar();
    await context.read<home_Cubit.HomeCubit>().getexploreHealthPedia();
    await context.read<home_Cubit.HomeCubit>().getUpdatedProfile(id: user!.id!);
  }

  final upcomingPrograms = List<UpcomingProgramData>.empty(growable: true);
  final upcomingWebinars = List<WebinarData>.empty(growable: true);
  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
  final exploreHealthPedia = List<HealthPediaData>.empty(growable: true);
  final knowExpert = List<ExpertData>.empty(growable: true);
  @override
  void initState() {
    context.read<home_Cubit.HomeCubit>().getExperts();
    // context.read<home_Cubit.HomeCubit>().getUpComingProgram(expert: '');
    // context.read<home_Cubit.HomeCubit>().getUpcomingWebinar();
    context.read<home_Cubit.HomeCubit>().getexploreHealthPedia();
    if (widget.profileName != null) {
      userName = widget.profileName!;
    } else {
      userName = user!.fullName!;
    }
    if (widget.profileName != null) {
      UserProfileId = widget.profileName!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: AppDrawer(
        userProfileId: UserProfileId,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          'Hey,${user!.fullName}!',
          style: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              getIt<AppRouter>().push(const NotifyRoute());
            },
            icon: const Icon(Icons.notification_add),
          ),
        ],
      ),
      body: BlocConsumer<home_Cubit.HomeCubit, home_Cubit.HomeState>(
        listener: (context, state) {
          if (state is ErrorState) {
            logs(format: 'e', state);
          }
          if (state is home_Cubit.GetUpdatedUserLoaded) {
            getUpdatedUserData.add(state.response.data!);
          }
          if (state is home_Cubit.ExpertsLoaded) {
            knowExpert
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is home_Cubit.ExploreHealthPediaLoaded) {
            exploreHealthPedia
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is home_Cubit.UpcomingWebinarLoaded) {
            upcomingWebinars
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is home_Cubit.UpcomingProrgamLoaded) {
            upcomingPrograms
              ..clear()
              ..addAll(state.response.data!);
          }
        },
        builder: (context, state) {
          if (state is home_Cubit.Loading) {
            return const LoadingIndicator(
              // ignore: unnecessary_type_check
              show: true,
            );
          }
          if (state is user_Profiel_Cubit.Loading) {
            return const LoadingIndicator(
              // ignore: unnecessary_type_check
              show: true,
            );
          }
          return RefreshIndicator(
            onRefresh: _refreshData,
            color: Colors.amber,
            child: WillPopScope(
              onWillPop: () async {
                if (closedCount < 1) {
                  setState(() {
                    closedCount += 1;
                  });
                  toast('Press back again to close the app');
                  return false;
                } else {
                  return true;
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Visibility(
                      visible: upcomingPrograms.isNotEmpty,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Upcoming Programs',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    getIt<AppRouter>()
                                        .push(const ProgramsRoute());
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(15, 166, 84, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          HorizontalList(
                            itemBuilder: (BuildContext context, int index) {
                              final upComingProgramTile =
                                  upcomingPrograms[index];
                              return UpComingProgramCard(
                                upcomingProgramData: upComingProgramTile,
                                profileId: UserProfileId,
                              );
                            },
                            itemCount: upcomingPrograms.length,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: upcomingWebinars.isNotEmpty,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Upcoming Webinars',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    getIt<AppRouter>()
                                        .push(const WebinarsRoute());
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(15, 166, 84, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          HorizontalList(
                            itemBuilder: (BuildContext context, int index) {
                              final upComingWebinarTile =
                                  upcomingWebinars[index];
                              return UpComingWebinarCard(
                                upComingWebinarData: upComingWebinarTile,
                              );
                            },
                            itemCount: upcomingWebinars.length,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: exploreHealthPedia.isNotEmpty,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Explore HealthPedia',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    getIt<AppRouter>()
                                        .push(const MyTabbedPage());
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(15, 166, 84, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          HorizontalList(
                            itemBuilder: (BuildContext context, int index) {
                              final exploreHealthPediaTile =
                                  exploreHealthPedia[index];
                              return ExploreHealthCard(
                                healthPediaData: exploreHealthPediaTile,
                              );
                            },
                            itemCount: exploreHealthPedia.length,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: knowExpert.isNotEmpty,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  'Know Our Experts',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    getIt<AppRouter>()
                                        .push(const ExpertRoute());
                                  },
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(15, 166, 84, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          HorizontalList(
                            itemBuilder: (BuildContext context, int index) {
                              final knowExpertTile = knowExpert[index];
                              return KnowExpert(
                                expertData: knowExpertTile,
                              );
                            },
                            itemCount: knowExpert.length,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Hear from our customers',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const VideoCarouselScreen(),
                    SizedBox(
                      height: 10.h,
                    ),
                    // const Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Text(
                    //           '13+',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(204, 61, 54, 1),
                    //             fontSize: 25,
                    //           ),
                    //         ),
                    //         Text(
                    //           'Countries Serviced',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(0, 0, 0, 1),
                    //             fontSize: 14,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     Column(
                    //       children: [
                    //         Text(
                    //           '82%',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(204, 61, 54, 1),
                    //             fontSize: 25,
                    //           ),
                    //         ),
                    //         Text(
                    //           'Success Rate',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(0, 0, 0, 1),
                    //             fontSize: 14,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // const Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Text(
                    //           '2500+',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(204, 61, 54, 1),
                    //             fontSize: 25,
                    //           ),
                    //         ),
                    //         Text(
                    //           'Pateints Served Successfully',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(0, 0, 0, 1),
                    //             fontSize: 14,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(
                    //       width: 15,
                    //     ),
                    //     Column(
                    //       children: [
                    //         Text(
                    //           '50+',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(204, 61, 54, 1),
                    //             fontSize: 25,
                    //           ),
                    //         ),
                    //         Text(
                    //           'Chronic conditions solved',
                    //           style: TextStyle(
                    //             color: Color.fromRGBO(0, 0, 0, 1),
                    //             fontSize: 12,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: const Color.fromRGBO(68, 68, 68, 1),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/yellowicon.png',
                            height: 70.h,
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Our goal is to create health awareness through our enriching content and help people reach their health goals through our world-class experts, tools, programs and products. Currently, we have started with online wellness programs.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
