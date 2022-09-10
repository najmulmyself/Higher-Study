// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:higher_study/component/college_card.dart';
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(6),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text('MVSH Engineering College'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(6),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text('MVSH Engineering College'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(6),
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text('MVSH Engineering College'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
              child: ListView(
                children: [
                  CollegeCard(),
                  SizedBox(
                    height: 20,
                  ),
                  CollegeCard(),
                  SizedBox(
                    height: 20,
                  ),
                  CollegeCard(),
                  SizedBox(
                    height: 20,
                  ),
                  CollegeCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
