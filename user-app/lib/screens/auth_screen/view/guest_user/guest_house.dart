import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_nav.dart';

@RoutePage()
class GuestHouse extends StatelessWidget {
  const GuestHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GuestNavigationBar(),
    );
  }
}
