// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:higher_study/component/cat_card.dart';
import 'package:higher_study/component/header.dart';
import 'package:higher_study/screens/home_material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeMat(),
    );
    // ],
    // ),
    // );
  }
}
