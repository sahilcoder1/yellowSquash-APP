import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SquareBox extends StatelessWidget {
  const SquareBox({required this.count, required this.text, super.key});
  final String? count;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65.h, // Adjust the width as needed
          height: 40.h, // Adjust the height as needed
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
            ),
          ),
          child: Center(child: Text(count!)),
        ),
        Container(
          width: 65.h, // Adjust the width as needed
          height: 30.h, // Adjust the height as needed
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              width: 3,
            ),
          ),
          child: Center(
            child: Text(
              text!,
              style: const TextStyle(
                color: Color.fromRGBO(249, 209, 33, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
