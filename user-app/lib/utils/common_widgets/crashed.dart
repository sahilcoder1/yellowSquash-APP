// ignore_for_file: lines_longer_than_80_chars, camel_case_types

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';

@RoutePage()
class crashedPage extends StatelessWidget {
  const crashedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().push(const HomeRoute());
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'YellowSquash',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 100),
              child: Text(
                'Well that was unexpected...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                  color: const Color.fromARGB(255, 11, 11, 11),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 113, right: 113),
              width: 250,
              height: 250,
              child: Image.asset('assets/images/crash.jpg'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                'Something Went Wrong on our end. While we figure it out you can continue exploring other features, or check back later.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(69, 68, 68, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            CustomButton(
              buttonText: 'Refresh App',
              width: 300.w,
              onPressed: () {
                getIt<AppRouter>().push(const HomeRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
