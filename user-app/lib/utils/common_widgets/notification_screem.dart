import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/modules/di.dart';

@RoutePage()
class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
          onPressed: () {
            getIt<AppRouter>().pop();
          },
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                ),
                child: SizedBox(
                  width: 244,
                  height: 244,
                  child: Image.asset('assets/images/no-notification.gif'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'No Notification yet!',
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
              '',
              // 'Click ❤️ to see them here',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(147, 147, 147, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
