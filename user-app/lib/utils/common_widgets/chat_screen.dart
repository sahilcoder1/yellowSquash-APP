import 'package:flutter/material.dart';
import 'package:yellow_squash/utils/common_widgets/refactored_Screen.dart';

class ChatUI extends StatelessWidget {
  const ChatUI({super.key});

  @override
  Widget build(BuildContext context) {
    const space = '         ';
    return RefactoredUI(
      onPress: () {},
      apptitle: 'Chat',
      buttonTitle: 'Explore Progams',
      subtitle: 'You need to join a Program\n $space to access Chat',
      title: 'No Conversations',
      imgUrl: 'assets/images/chat1.png',
    );
  }
}
