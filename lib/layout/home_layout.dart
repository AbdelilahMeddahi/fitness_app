import 'package:fitness_app/screens/analytics_screen.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:fitness_app/screens/profile_screen.dart';
import 'package:fitness_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:developer';


class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    AnalyticsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            selectedItemColor: pinkColor,
            unselectedItemColor: Colors.black,
            iconSize: MediaQuery.of(context).size.width * 0.075,
            currentIndex: currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            onTap: (index) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Ionicons.home_outline), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Ionicons.stats_chart_outline), label: "analytics"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "profile"),
            ],
          ),
        ));
  }
}
