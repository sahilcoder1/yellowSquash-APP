import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/user_tablist.dart';

import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(187, 187, 187, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            getIt<AppRouter>().pop();
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Column(
        children: [
          userTab(
            title: 'Change Password',
            onPress: () {
              getIt<AppRouter>().push(
                const ResetRoute(),
              );
            },
          ),
          const SizedBox(
            height: 2,
          ),
          const SizedBox(
            height: 2,
          ),
          const SizedBox(
            height: 2,
          ),
          // userTab(
          //   title: 'Help Center',
          //   onPress: () {},
          // ),
          // const SizedBox(
          //   height: 2,
          // ,)
          userTab(
            title: 'Logout',
            onPress: () async {
              await StorageManager.signOut();
              toast(
                ' successfully Logout! See you soon.',
                bgColor: Colors.green,
                textColor: Colors.white,
              );
              await getIt<AppRouter>().replaceAll([const LoginRoute()]);
            },
          ),
          const SizedBox(
            height: 2,
          ),
          Expanded(
            child: userTab(
              title: '',
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
