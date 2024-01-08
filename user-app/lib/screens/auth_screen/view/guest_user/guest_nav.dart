// ignore_for_file: eol_at_end_of_file, library_private_types_in_public_api

import 'dart:async';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';

import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_not_accessed.dart'
    as gnotaccess;
import 'package:yellow_squash/screens/auth_screen/view/guest_user/guest_sub_house.dart'
    as ghouse;

class GuestNavigationBar extends StatefulWidget {
  const GuestNavigationBar({super.key});

  @override
  _GuestNavigationBarState createState() => _GuestNavigationBarState();
}

class _GuestNavigationBarState extends State<GuestNavigationBar>
    with TickerProviderStateMixin {
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0;
  void _handleBottomNavIndexChange(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  late AnimationController _fabAnimationController;
  late AnimationController _borderRadiusAnimationController;
  late Animation<double> fabAnimation;
  late Animation<double> borderRadiusAnimation;
  late CurvedAnimation fabCurve;
  late CurvedAnimation borderRadiusCurve;
  late AnimationController _hideBottomBarAnimationController;

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.favorite_border_outlined,
    Icons.chat_bubble_outline,
    Icons.person_2_outlined,
  ];
  final textList = <String>[
    'Home',
    'Fav',
    'Chat',
    'Account',
  ];
  bool _isBottomBarVisible = true;
  bool _isFabVisible = true;

  @override
  void initState() {
    super.initState();
    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _borderRadiusAnimationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    fabCurve = CurvedAnimation(
      parent: _fabAnimationController,
      curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn),
    );
    borderRadiusCurve = CurvedAnimation(
      parent: _borderRadiusAnimationController,
      curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn),
    );

    fabAnimation = Tween<double>(begin: 0, end: 1).animate(fabCurve);
    borderRadiusAnimation = Tween<double>(begin: 0, end: 1).animate(
      borderRadiusCurve,
    );

    _hideBottomBarAnimationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    Future.delayed(
      const Duration(seconds: 1),
      () {
        _fabAnimationController.forward();
        _borderRadiusAnimationController.forward();
      },
    );
  }

  bool onScrollNotification(ScrollNotification notification) {
    if (notification is UserScrollNotification &&
        notification.metrics.axis == Axis.vertical) {
      switch (notification.direction) {
        case ScrollDirection.forward:
          if (!_isBottomBarVisible) {
            _hideBottomBarAnimationController.reverse();
            _isBottomBarVisible = true;
          }
          if (!_isFabVisible) {
            _fabAnimationController.forward();
            _isFabVisible = true;
          }
          break;
        case ScrollDirection.reverse:
          if (_isBottomBarVisible) {
            _hideBottomBarAnimationController.forward();
            _isBottomBarVisible = false;
          }
          if (_isFabVisible) {
            _fabAnimationController.reverse();
            _isFabVisible = false;
          }
          break;
        case ScrollDirection.idle:
          break;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: NotificationListener<ScrollNotification>(
        onNotification: onScrollNotification,
        child: NavigationScreen(_bottomNavIndex),
      ),
      floatingActionButton: _isFabVisible
          ? FloatingActionButton(
              backgroundColor: Colors.black,
              child: const Icon(
                Icons.store,
                color: Color.fromARGB(255, 248, 246, 246),
              ),
              onPressed: () {
                getIt<AppRouter>().push(const GuestYellowStore());
                _fabAnimationController.reset();
                _borderRadiusAnimationController
                  ..reset()
                  ..forward();
                _fabAnimationController.forward();
              },
            )
          : null, // Hide FloatingActionButton if not visible
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _isBottomBarVisible
          ? AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                final color = isActive
                    ? const Color.fromRGBO(249, 209, 33, 1)
                    : Colors.white;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      iconList[index],
                      size: 24,
                      color: color,
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AutoSizeText(
                        textList[index],
                        maxLines: 1,
                        style: TextStyle(color: color),
                        group: autoSizeGroup,
                      ),
                    ),
                  ],
                );
              },
              backgroundColor: Colors.black,
              activeIndex: _bottomNavIndex,
              splashColor: Colors.yellow,
              notchAndCornersAnimation: borderRadiusAnimation,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.sharpEdge,
              gapLocation: GapLocation.center,
              leftCornerRadius: 0,
              rightCornerRadius: 0,
              onTap: _handleBottomNavIndexChange,
              hideAnimationController: _hideBottomBarAnimationController,
              shadow: const BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 12,
                spreadRadius: 0.5,
                color: Colors.white,
              ),
            )
          : null,
    );
  }
}

class NavigationScreen extends StatelessWidget {
  const NavigationScreen(this.currentIndex, {super.key});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    switch (currentIndex) {
      case 0:
        return  const  ghouse.GuestSubHome();
      case 1:
        return const gnotaccess.GuestNotAccess();
      case 2:
        return const gnotaccess.GuestNotAccess();
      case 3:
        return const gnotaccess.GuestNotAccess();
      default:
        return Container();
    }
  }
}



