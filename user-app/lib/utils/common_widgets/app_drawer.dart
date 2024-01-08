// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/switch_profile_response.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/UserProfile/cubit/user_profile_cubit.dart';
import 'package:yellow_squash/screens/UserProfile/repository/user_profile_repository.dart';
import 'package:yellow_squash/utils/common_widgets/checkness_drawer.dart';
import 'package:yellow_squash/utils/common_widgets/custom_network_image.dart';
import 'package:yellow_squash/utils/common_widgets/expanded_list.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/user_tablist.dart';
import 'package:yellow_squash/utils/common_widgets/zoomed_screen.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class AppDrawerHome extends StatelessWidget {
  const AppDrawerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserProfileCubit(UserProfileRepository()),
      child: const AppDrawer(),
    );
  }
}

class AppDrawer extends StatefulWidget {
  const AppDrawer({this.userProfileId, super.key});
  final String? userProfileId;
  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
  final switchProfileData = List<SwitchProfileData>.empty(growable: true);
  final user = StorageManager.getUserData();
  bool isExpand = false;

  String userProfileData = '';
  bool checkness = false;

  // String userProfilePictures = '';
  // String userName = '';
  // String userEmail = '';

  // bool? loading;

  @override
  void initState() {
    // context.read<HomeCubit>().getSwitchProfileData(userId: user!.id!);
    context.read<UserProfileCubit>().getUpdatedProfile(id: user!.id!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserProfileCubit, UserProfileState>(
      listener: (context, state) {
        if (state is ErrorState) {
          checkness = true;
        }
        if (state is GetUpdatedUserLoaded) {
          getUpdatedUserData.add(state.response.data!);
          // userProfilePictures = getUpdatedUserData[0].profilePicture!;
          // userName = getUpdatedUserData[0].fullName!;
          // userEmail = getUpdatedUserData[0].email!;
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return const LoadingIndicator(
            show: true,
          );
        }

        return checkness
            ? const CheckAppDrawer()
            : Drawer(
                backgroundColor: const Color.fromRGBO(187, 187, 187, 1),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: const Color.fromRGBO(249, 209, 33, 1),
                        height: 190,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60),
                                    child: Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.green,
                                          width: 4,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Hero(
                                          tag: 'profile_picture',
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                // ignore: inference_failure_on_instance_creation
                                                PageRouteBuilder(
                                                  transitionDuration:
                                                      const Duration(
                                                    milliseconds: 500,
                                                  ),
                                                  pageBuilder: (
                                                    context,
                                                    animation,
                                                    secondaryAnimation,
                                                  ) {
                                                    return ZoomedInScreen(
                                                      profile:
                                                          user!.profilePicture,
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                            child: CustomNetworkImageView(
                                              imagePath:
                                                  user?.profilePicture != null
                                                      ? user!.profilePicture!
                                                      : '',
                                              dBorderRadius: 50,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 50.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          user!.fullName!,
                                          style: TextStyle(fontSize: 18.h),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            await StorageManager.signOut();
                                            toast(
                                              'successfully Logout! See you soon.',
                                              bgColor: Colors.green,
                                              textColor: Colors.white,
                                            );
                                            await getIt<AppRouter>().replaceAll(
                                              [const LoginRoute()],
                                            );
                                          },
                                          child: const Text(
                                            'Logout >',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ColoredBox(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: ExpansionTile(
                            title: const Text('Explore'),
                            children: [
                              expandedList(
                                ontap: () {
                                  getIt<AppRouter>().push(const ProgramsRoute());
                                },
                                title: 'Programs',
                                myicon: const Icon(Icons.tv),
                              ),
                              expandedList(
                                ontap: () {
                                  getIt<AppRouter>().push(const WebinarsRoute());
                                },
                                title: 'Webinars',
                                myicon: const Icon(Icons.account_circle),
                              ),
                              expandedList(
                                ontap: () {
                                  getIt<AppRouter>().push(const MyTabbedPage());
                                },
                                title: 'HealthPedia',
                                myicon: const Icon(Icons.book),
                              ),
                              expandedList(
                                ontap: () {
                                  getIt<AppRouter>().push(const ExpertRoute());
                                },
                                title: 'Experts',
                                myicon: const Icon(Icons.supervised_user_circle),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      userTab(
                        title: 'My Programs',
                        onPress: () {
                          getIt<AppRouter>().push(
                            MyprogramPurchased(
                              userprofileId: user!.profileid!,
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      if (getUpdatedUserData[0].patientDetails!.isNotEmpty)
                        userTab(
                          title: 'Switch Profile',
                          onPress: () {
                            getIt<AppRouter>().push(const MySwitchList());
                          },
                        ),
                      const SizedBox(
                        height: 1,
                      ),
                      userTab(
                        title: 'My Webinars',
                        onPress: () {
                          getIt<AppRouter>().push(const MywebinarPurchased());
                        },
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      userTab(
                        title: 'My Calendar',
                        onPress: () {
                          getIt<AppRouter>().push(const MyCalendar());
                        },
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      userTab(
                        title: 'Settings',
                        onPress: () {
                          getIt<AppRouter>().push(
                            const Settings(),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      userTab(
                        title: 'Privacy Policy',
                        onPress: () {
                          getIt<AppRouter>().push(const Privacy());
                        },
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      userTab(
                        title: 'Legal',
                        onPress: () {},
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      userTab(
                        title: 'Contact Us',
                        onPress: () {},
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Container(
                        child: userTab(
                          onPress: () {},
                          title: '',
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
