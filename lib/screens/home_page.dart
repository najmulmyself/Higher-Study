// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:higher_study/component/cat_card.dart';
import 'package:higher_study/component/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            // EXPANDED SHOULD BE PARENT OF LISTVIEW (NOT SURE)
            child: Padding(
              padding: EdgeInsets.only(right: 30.0, left: 30, top: 30.0),

              // child: CategoryCard(
              //   image: 'assets/images/cat-card1.png',
              // ),
              // EXPANDED SHOULD NOT USED HERE BECASE ABOVE WRAPPED WITH PADDING(NOT SURE)
              child: ListView(
                // IF WE USE COLUMN HERE ERROR OCCURED
                children: [
                  CategoryCard(
                    image: 'assets/images/cat-card1.png',
                  ),
                  CategoryCard(
                    image: 'assets/images/cat-card2.png',
                  ),
                  CategoryCard(
                    image: 'assets/images/cat-card3.png',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    // ],
    // ),
    // );
  }
}
