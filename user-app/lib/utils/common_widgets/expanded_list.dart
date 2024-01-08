import 'package:flutter/material.dart';

class expandedList extends StatelessWidget {
  const expandedList({
    super.key,
    required this.title,
    required this.myicon,
    required this.ontap,
  });
  final String title;
  final Icon myicon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(187, 187, 187, 1),
          ),
        ),
      ),
      child: ListTile(
        leading: IconButton(
          onPressed: () {},
          icon: myicon,
        ),
        splashColor: Colors.yellow,
        onTap: ontap,
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
