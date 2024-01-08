// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yellow_squash/screens/UserProfile/view/update_profile_screen.dart';
import 'package:yellow_squash/screens/favourite_screen/view/favourite_view.dart';
import 'package:yellow_squash/screens/home_screen/view/home_switch_combine.dart';
import 'package:yellow_squash/utils/common_widgets/chat_screen.dart';
import 'package:yellow_squash/utils/common_widgets/yellow_stores.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    // const MySwitchList(),
    const HomeSwitchCombine(),
    // const YellowHome(),
    const YellowStore(),
    const FavouriteScreen(),
    const ChatUI(),
    const UserProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 22,
        onTap: _onItemTapped,
        elevation: 50,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
