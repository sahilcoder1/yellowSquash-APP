// ignore_for_file: inference_failure_on_function_invocation, lines_longer_than_80_chars

import 'package:flutter/material.dart';

class SwitchToBuy extends StatelessWidget {
  const SwitchToBuy({super.key});

  void showSwitchToBuyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 244, 239, 195),
          title: const Text(
            'Switch to Parent.',
            style: TextStyle(color: Colors.green),
          ),
          content: const Text(
            'Navigate to the home page, open the app drawer (☰), select "Switch Profile," and switch to the parent profile to purchase the program.',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // You can return any other widget here.
  }
}
