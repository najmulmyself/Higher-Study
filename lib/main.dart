// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:higher_study/screens/ano.dart';
import 'package:higher_study/screens/container.dart';
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
          // body: HomePage(),
          // body: PersistentTabView(
          //   context,
          //   screens: [HomePage(), Container()],
          //   items: [
          //     PersistentBottomNavBarItem(
          //       onPressed: (i) {},
          //       icon: Icon(CupertinoIcons.home),
          //       title: "Home",
          //       activeColorPrimary: CupertinoColors.activeBlue,
          //       inactiveColorPrimary: CupertinoColors.systemGrey,
          //     ),
          //     PersistentBottomNavBarItem(
          //       icon: Icon(CupertinoIcons.settings),
          //       title: "Settings",
          //       activeColorPrimary: CupertinoColors.activeBlue,
          //       inactiveColorPrimary: CupertinoColors.systemGrey,
          //     ),
          //     PersistentBottomNavBarItem(
          //       icon: Icon(CupertinoIcons.settings),
          //       title: "Settings",
          //       activeColorPrimary: CupertinoColors.activeBlue,
          //       inactiveColorPrimary: CupertinoColors.systemGrey,
          //     ),
          //     PersistentBottomNavBarItem(
          //       icon: Icon(CupertinoIcons.settings),
          //       title: "Settings",
          //       activeColorPrimary: CupertinoColors.activeBlue,
          //       inactiveColorPrimary: CupertinoColors.systemGrey,
          //     ),
          //     PersistentBottomNavBarItem(
          //       icon: Icon(CupertinoIcons.settings),
          //       title: "Settings",
          //       activeColorPrimary: CupertinoColors.activeBlue,
          //       inactiveColorPrimary: CupertinoColors.systemGrey,
          //     ),
          //   ],
          // ),
          bottomNavigationBar: PersistentTabView(
            context,
            screens: [
              HomePage(),
              Con(),
              ano(),
            ],
            items: [
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.home),
                title: "Home",
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.settings),
                title: "Settings",
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(CupertinoIcons.settings),
                title: "Settings",
                activeColorPrimary: CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
            ],
            navBarStyle: NavBarStyle.style13,
          ),
        ),
      ),
    );
  }
}
