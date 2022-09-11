// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:higher_study/screens/college_detail.dart';
import 'package:higher_study/screens/college_list_screen.dart';
import 'package:higher_study/screens/dummy_screen.dart';
import 'package:higher_study/screens/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: ,
      // primary font will be lato
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          body: HomePage(
            isCatActive: false,
          ), // NO NEED TO ADD HOMEPAGE | SCREEN WILL DO IT AUTOMATICALLY IN ORDER
          bottomNavigationBar: PersistentTabView(
            context,
            backgroundColor: Color(0xff0E3C6E),
            screens: [
              HomePage(
                isCatActive: false,
              ),
              CollegeList(),
              Container(),
              Container(),
            ],
            items: [
              PersistentBottomNavBarItem(
                // routeAndNavigatorSettings: RouteAndNavigatorSettings(
                //   initialRoute: '/',

                // ),
                icon: Icon(CupertinoIcons.home),
                title: "Home",
                activeColorPrimary: CupertinoColors.white,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.bookmark_added_rounded),
                title: "Saved",
                activeColorPrimary: CupertinoColors.white,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.manage_history_sharp),
                title: "Settings",
                activeColorPrimary: CupertinoColors.white,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.person_sharp),
                title: "Account",
                activeColorPrimary: CupertinoColors.white,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
            ],
            navBarStyle: NavBarStyle.style13,
          ),
        ),
      ),
      // routes: {
      //   '/': (context) => HomePage(
      //         isCatActive: false,
      //       ),
      //   '/collegeList': (context) => CollegeList(),
      //   '/collegeDetails': (context) => CollegeDetails(),
      // },
    );
  }
}
