import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';

@RoutePage()
class RefactoredUI extends StatelessWidget {
  const RefactoredUI({
    required this.apptitle,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    required this.onPress,
    super.key,
  });
  final String apptitle;
  final String imgUrl;
  final String title;
  final String subtitle;
  final String buttonTitle;
  final VoidCallback onPress;
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
        title: Text(
          apptitle,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 217, left: 113, right: 113),
              width: 134,
              height: 134,
              child: Image.asset(imgUrl),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(147, 147, 147, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 164,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),
                onPressed: onPress,
                child: Text(
                  buttonTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
