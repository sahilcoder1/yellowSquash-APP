import 'package:flutter/material.dart';

import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';

class tab_list extends StatelessWidget {
  const tab_list({
    super.key,
    required this.title,
  });
  final String title;
  // final String routename;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        splashColor: Colors.yellow,
        onTap: () {
          // Navigator.pushReplacementNamed(context, routename);
          getIt<AppRouter>().push(const GuestNotAccess());
        },
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: Color.fromRGBO(187, 187, 187, 1),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
    );
  }
}
