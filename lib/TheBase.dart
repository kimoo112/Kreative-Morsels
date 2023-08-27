// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/favorite.dart';
import 'package:flutter_application_1/Screens/home.dart';
import 'package:flutter_application_1/Screens/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'Constant/color.dart';
import 'Widgets/theme.dart';

// ignore: use_key_in_widget_constructors
class TheBase extends StatefulWidget {
  @override
  State<TheBase> createState() => _TheBaseState();
}

class _TheBaseState extends State<TheBase> {
  List Screens = [
    HomeScreen(),
    FavoriteScreen(),
    
    ProfileScreen()
  ];

  int Kimo = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Screens[Kimo],
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: AppTheme.isDark?cdark2:cwhite,
        currentIndex: Kimo,
        onTap: (index) {
    setState(() {
      Kimo = index;
    });
  },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            unselectedColor: AppTheme.isDark?cwhite:cdark2,
            title: Text("Home"),
                        selectedColor:  Color.fromARGB(255, 201, 69, 3),

          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            unselectedColor: AppTheme.isDark?cwhite:cdark2,
            title: Text("Likes"),
            selectedColor: Colors.pink,
          ),

          /// Search
          // SalomonBottomBarItem(
          //   icon: Icon(Icons.search),
          //   title: Text("Search"),
          //   selectedColor: Colors.orange,
          // ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person, ),
            unselectedColor: AppTheme.isDark?cwhite:cdark2,
            title: Text("Profile"),
            selectedColor:  Color(0xFFFF5704),
          ),
        ],
      ),
    );
  }
}
