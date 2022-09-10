// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:higher_study/component/header.dart';
import 'package:higher_study/component/search_bar.dart';

class CollegeList extends StatelessWidget {
  const CollegeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(
            anotherScreen: true,
          ),
        ],
      ),
    );
  }
}
