// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:higher_study/component/search_bar.dart';

class Header extends StatelessWidget {
  Header({this.anotherScreen = false});
  bool? anotherScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: anotherScreen == false ? 250 : 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff0E3C6E),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            anotherScreen == false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: prefer_const_literals_to_create_immutables
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Find your own way',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Search in 600 colleges around!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Icon(
                            Icons.notification_important,
                            color: Colors.white,
                            size: 25,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                : Container(),
            anotherScreen == false
                ? SizedBox(
                    height: 50,
                  )
                : SizedBox(),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}
