import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Fav extends StatelessWidget {
  const Fav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 217.h, left: 113.h, right: 113.h),
            width: 134,
            height: 134,
            child: Image.asset('assets/images/favorite1.png'),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "It's empty in here",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          Text(
            'Click ❤️ to see them here',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: const Color.fromRGBO(147, 147, 147, 1),
            ),
          ),
        ],
      ),
    );
  }
}
