// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CollegeCard extends StatelessWidget {
  const CollegeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset('assets/images/coll-card1.png'),
          Column(
            children: [
              Row(
                children: [
                  Text('GHJK Engineering College'),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text('4.3'),
                        Icon(Icons.star),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
