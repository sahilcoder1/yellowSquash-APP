import 'package:flutter/material.dart';

class filedwithicon extends StatelessWidget {
  const filedwithicon({
    required this.labeltext,
    required this.myicon,
    required this.hinttext,
    super.key,
  });
  final String labeltext;
  final String hinttext;
  final Icon myicon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hinttext,
        suffixIcon: myicon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
