import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/expanded_list.dart';

import 'package:yellow_squash/utils/common_widgets/user_tablist.dart';

class GuestDrawer extends StatefulWidget {
  const GuestDrawer({super.key});
  @override
  State<GuestDrawer> createState() => _GuestDrawerState();
}

class _GuestDrawerState extends State<GuestDrawer> {
  bool isExpand = false;

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
                              color: Colors.red,
                              width: 4,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                'https://cdn3.iconfinder.com/data/icons/dashboard-ui-element/32/Dashboard_icon_design_expanded-28-512.png',
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
                              'You are in Guest Mode.',
                              style: TextStyle(fontSize: 16.h),
                            ),
                            // Row(
                            //   children: [
                            //     Text(
                            //       user.email!,
                            //       style: const TextStyle(
                            //         fontSize: 7,
                            //       ),
                            //       maxLines: 5,
                            //       overflow: TextOverflow.ellipsis,
                            //     )
                            //   ],
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            InkWell(
                              onTap: () {
                                getIt<AppRouter>().replace(const LoginRoute());
                              },
                              child: const Text(
                                'Login>',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
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
                      // Navigator.pushNamed(context, Programs.routeName);
                      getIt<AppRouter>().push(const GuestProgramRoute());
                    },
                    title: 'Programs',
                    myicon: const Icon(Icons.tv),
                  ),
                  expandedList(
                    ontap: () {
                      getIt<AppRouter>().push(const GuestWebinarsRoute());
                    },
                    title: 'Webinars',
                    myicon: const Icon(Icons.account_circle),
                  ),
                  expandedList(
                    ontap: () {
                      getIt<AppRouter>().push(const GuestMyTabbedPage());
                    },
                    title: 'HealthPedia',
                    myicon: const Icon(Icons.abc),
                  ),
                  expandedList(
                    ontap: () {
                      getIt<AppRouter>().push(const GuestExpertRoute());
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
            height: 10,
          ),
          const SizedBox(
            height: 1,
          ),
          const SizedBox(
            height: 10,
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
