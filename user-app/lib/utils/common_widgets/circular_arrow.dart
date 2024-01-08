import 'package:flutter/material.dart';

class CircularArrow extends StatelessWidget {
  const CircularArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 28,
          backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
