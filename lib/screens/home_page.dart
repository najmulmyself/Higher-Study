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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Expanded(
              child: CustomScrollView(
                slivers: [
                  Column(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
