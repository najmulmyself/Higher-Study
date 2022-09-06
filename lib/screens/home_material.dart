// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:higher_study/component/cat_card.dart';
import 'package:higher_study/component/custom_radio_list.dart';
import 'package:higher_study/component/header.dart';
import 'package:higher_study/main.dart';
import 'package:higher_study/modal/show_modal.dart';
import 'package:higher_study/screens/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeMat extends StatefulWidget {
  // HomeMat({required this.isCatActive});

  @override
  State<HomeMat> createState() => _HomeMatState();
}

class _HomeMatState extends State<HomeMat> {
  bool isCatActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                GestureDetector(
                  onTap: () {
                    showModal(context);
                  },
                  child: CategoryCard(
                    image: 'assets/images/cat-card1.png',
                    title: 'Top Colleges',
                    desc:
                        'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                    sdes1: '+126',
                    sdes2: 'Colleges',
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    showModal(context);
                  }),
                  child: CategoryCard(
                    image: 'assets/images/cat-card2.png',
                    title: 'Top Schools',
                    desc:
                        'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                    sdes1: '+106',
                    sdes2: 'Schools',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModal(context);
                  },
                  child: CategoryCard(
                    image: 'assets/images/cat-card3.png',
                    title: 'Exams',
                    desc:
                        'Find an end to end information about the exams that are happening in India',
                    sdes1: '+16',
                    sdes2: 'Exams',
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
