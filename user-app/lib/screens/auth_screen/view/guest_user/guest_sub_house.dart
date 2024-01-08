// ignore_for_file: lines_longer_than_80_chars, eol_at_end_of_file
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_data.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_Webinar/guest_upcoming_card.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_drawer.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_upcoming_program_card.dart';
import 'package:yellow_squash/screens/home_screen/cubit/home_cubit.dart';
import 'package:yellow_squash/screens/home_screen/repository/home_repository.dart';
import 'package:yellow_squash/utils/common_widgets/explore_healthCard.dart';
import 'package:yellow_squash/utils/common_widgets/knowexpert.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/video_crousel.dart';

@RoutePage()
class GuestSubHome extends StatelessWidget {
  const GuestSubHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(HomeRepository()),
      child: const YellowView(),
    );
  }
}

class YellowView extends StatefulWidget {
  const YellowView({
    super.key,
  });

  @override
  State<YellowView> createState() => _YellowViewState();
}

class _YellowViewState extends State<YellowView> {
  int closedCount = 0;
  Future<void> _refreshData() async {
    await context.read<HomeCubit>().getExperts();
    // ignore: use_build_context_synchronously
    // await context.read<HomeCubit>().getUpcomingWebinar();
    // ignore: use_build_context_synchronously
    // await context.read<HomeCubit>().getUpComingProgram(expert: '');
    // ignore: use_build_context_synchronously
    await context.read<HomeCubit>().getexploreHealthPedia();
  }

  final upcomingPrograms = List<UpcomingProgramData>.empty(growable: true);
  final upcomingWebinars = List<WebinarData>.empty(growable: true);
  final exploreHealthPedia = List<HealthPediaData>.empty(growable: true);
  final knowExpert = List<ExpertData>.empty(growable: true);
  @override
  void initState() {
    context.read<HomeCubit>().getExperts();
    // context.read<HomeCubit>().getUpcomingWebinar();
    // context.read<HomeCubit>().getUpComingProgram(expert: '');
    context.read<HomeCubit>().getexploreHealthPedia();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const GuestDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text(
          'Hey, User!',
          style: TextStyle(
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
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is ErrorState) {
            // toast('Slow or No internet connection');
          }

          if (state is ExpertsLoaded) {
            knowExpert
              ..clear()
              ..addAll(state.response.data!);
          }

          if (state is ExploreHealthPediaLoaded) {
            //logs(state);
            exploreHealthPedia
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is UpcomingWebinarLoaded) {
            //logs(state);
            upcomingWebinars
              ..clear()
              ..addAll(state.response.data!);
          }
          if (state is UpcomingProrgamLoaded) {
            //logs(state.response);
            upcomingPrograms
              ..clear()
              ..addAll(state.response.data!);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(
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
                                        .push(const GuestProgramRoute());
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
                              return GuestUpComingProgramCard(
                                upcomingProgramData: upComingProgramTile,
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
                                        .push(const GuestWebinarsRoute());
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
                              return GuestUpComingWebinarCard(
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
                                        .push(const GuestMyTabbedPage());
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '13+',
                              style: TextStyle(
                                color: Color.fromRGBO(204, 61, 54, 1),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Countries Serviced',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '82%',
                              style: TextStyle(
                                color: Color.fromRGBO(204, 61, 54, 1),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Success Rate',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '2500+',
                              style: TextStyle(
                                color: Color.fromRGBO(204, 61, 54, 1),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Pateints Served Successfully',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              '50+',
                              style: TextStyle(
                                color: Color.fromRGBO(204, 61, 54, 1),
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Chronic conditions solved',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
