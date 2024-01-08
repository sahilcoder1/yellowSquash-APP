import 'package:flutter/material.dart';

class HalfCircleAvatars extends StatelessWidget {
  const HalfCircleAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: ClipOval(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Image.network(
                      'https://www.grantmakers.io/profiles/assets/img/icons-letters/S.svg'),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 25,
          child: ClipOval(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Image.network(
                    'https://www.grantmakers.io/profiles/assets/img/icons-letters/S.svg',
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 50,
          child: ClipOval(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Image.network(
                    'https://www.grantmakers.io/profiles/assets/img/icons-letters/S.svg',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 50,
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
