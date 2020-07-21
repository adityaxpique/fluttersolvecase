import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:solvecaseflutter/Classes/Constants.dart';

import 'LectureScreen.dart';
import 'MaterialScreen.dart';
import 'SolutionScreen.dart';

class MainScreen extends StatefulWidget {
  String enroll;
  int sem;

  MainScreen({this.enroll, this.sem});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreens() {
    return [
      MaterialScreen(
        enroll: widget.enroll,
        sem: widget.sem,
      ),
      SolutionScreen(
        enroll: widget.enroll,
        sem: widget.sem,
      ),
      LectureScreen(
        enroll: widget.enroll,
        sem: widget.sem,
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book_solid),
        title: ("Study Material"),
        activeColor: kPrimaryColor,
        inactiveColor: kSecondaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.folder_solid),
        title: ("Solutions"),
        activeColor: kPrimaryColor,
        inactiveColor: kSecondaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.video_camera_solid),
        title: ("Video Lectures"),
        activeColor: kPrimaryColor,
        inactiveColor: kSecondaryColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}
