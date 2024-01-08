import 'package:flutter/material.dart';

// ignore: camel_case_types
class userTab extends StatelessWidget {
  const userTab({
    super.key,
    required this.title,
    required this.onPress,
  });
  final String title;
  final VoidCallback onPress;
  // final String routename;

  @override
  Widget build(BuildContext context) {
    // ignore: use_colored_box
    return Container(
      color: Colors.white,
      child: ListTile(
        splashColor: Colors.yellow,
        onTap: onPress,
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
