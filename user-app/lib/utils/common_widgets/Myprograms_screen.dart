// ignore_for_file: file_names

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';

@RoutePage()
class MyProgramScreen extends StatelessWidget {
  const MyProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 217, left: 113, right: 113),
              width: 134,
              height: 134,
              child: Image.asset('assets/images/openbox.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "It's empty in here",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            const Text(
              'Buy Programs to see them here',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(147, 147, 147, 1),
              ),
            ),
            CustomButton(
              buttonText: 'Explore Programs',
              onPressed: () {
                getIt<AppRouter>().push(const ProgramsRoute());
              },
              width: 400.w,
            ),
          ],
        ),
      ),
    );
  }
}
