// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String? image;
  CategoryCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 158, // as figma says
          width: double.infinity,
          child: Image.asset(
            image!,
            fit: BoxFit.contain,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Top Colleges',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
