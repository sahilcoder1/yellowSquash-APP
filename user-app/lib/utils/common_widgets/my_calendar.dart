import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yellow_squash/utils/common_widgets/refactored_Screen.dart';

@RoutePage()
class MyCalendar extends StatelessWidget {
  const MyCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return RefactoredUI(
      onPress: () {},
      apptitle: 'Calendar',
      buttonTitle: 'Explore Calendar',
      subtitle: '',
      title: 'Coming Soon',
      imgUrl: 'assets/images/openbox.png',
    );
  }
}
