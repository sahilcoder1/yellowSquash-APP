import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';

@RoutePage()
class MyPurachedProgramHandle extends StatelessWidget {
  const MyPurachedProgramHandle({super.key});

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
            Text(
              'Buy Program see them here',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                color: const Color.fromRGBO(147, 147, 147, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: const Color.fromRGBO(11, 11, 11, 1),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              'If you Already purchased please switch profile to see them here',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: const Color.fromRGBO(147, 147, 147, 1),
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
