import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/utils/common_widgets/square_box.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({required this.targetDate, super.key});
  final DateTime? targetDate;

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  late DateTime targetDateTime;
  late Duration countdown;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    targetDateTime = widget.targetDate!;
    countdown = targetDateTime.difference(DateTime.now());

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        countdown = targetDateTime.difference(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var days = countdown.inDays;
    var hours = countdown.inHours % 24;
    var minutes = countdown.inMinutes % 60;
    var seconds = countdown.inSeconds % 60;

    if (days <= 0 || hours <= 0 || minutes <= 0) {
      days = 0;
      hours = 0;
      minutes = 0;
      seconds = 0;
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Webinar Starts in',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.h, right: 10.h, top: 10.h),
              child: Row(
                children: [
                  SquareBox(
                    count: days.toString().padLeft(2, '0'),
                    text: 'Days',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    ':',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SquareBox(
                    count: hours.toString().padLeft(2, '0'),
                    text: 'Hours',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    ':',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SquareBox(
                    count: minutes.toString().padLeft(2, '0'),
                    text: 'Min',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    ':',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SquareBox(
                    count: seconds.toString().padLeft(2, '0'),
                    text: 'Sec',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
