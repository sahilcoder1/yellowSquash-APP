import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';

import 'package:yellow_squash/modules/di.dart';

import 'package:yellow_squash/utils/common_widgets/expanded_list.dart';

import 'package:yellow_squash/utils/common_widgets/user_tablist.dart';
import 'package:yellow_squash/utils/common_widgets/zoomed_screen.dart';

import 'package:yellow_squash/utils/services/storage_manager.dart';

class CheckAppDrawer extends StatefulWidget {
  const CheckAppDrawer({this.userProfileId, super.key});
  final String? userProfileId;
  @override
  State<CheckAppDrawer> createState() => _CheckAppDrawerState();
}

class _CheckAppDrawerState extends State<CheckAppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(187, 187, 187, 1),
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
                                      transitionDuration: const Duration(
                                        milliseconds: 500,
                                      ),
                                      pageBuilder: (
                                        context,
                                        animation,
                                        secondaryAnimation,
                                      ) {
                                        return const ZoomedInScreen(
                                          profile: '',
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: const CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage(
                                    '',
                                  ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'try login again',
                              style: TextStyle(fontSize: 16.h),
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
                                await getIt<AppRouter>()
                                    .replaceAll([const LoginRoute()]);
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
                    myicon: const Icon(Icons.abc),
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
              // getIt<AppRouter>()
              //     .push(MyprogramPurchased(userprofileId: userProfileData));
            },
          ),
          const SizedBox(
            height: 1,
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
            onPress: () {},
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
            onPress: () {},
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
          Expanded(
            child: userTab(
              onPress: () {},
              title: '',
            ),
          ),
        ],
      ),
    );
  }
}
