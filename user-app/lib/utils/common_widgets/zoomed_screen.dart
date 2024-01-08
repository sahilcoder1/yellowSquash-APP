import 'package:flutter/material.dart';

import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';

class ZoomedInScreen extends StatelessWidget {
  final String? profile;
  const ZoomedInScreen({this.profile, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Picture',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
            onPressed: () {
              getIt<AppRouter>().push(const UserProfileRoute());
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors
            .black, // Set the background color to black for a better effect
        child: Center(
          child: Hero(
            tag: 'profile_picture',
            child: Image.network(
              profile ??
                  'https://static.vecteezy.com/system/resources/previews/005/544/718/original/profile-icon-design-free-vector.jpg',
            ),
          ),
        ),
      ),
    );
  }
}


