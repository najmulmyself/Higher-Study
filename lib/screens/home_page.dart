// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 250,
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
              Row(
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
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xffD6D6D6),
                    ),
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: 'Search for colleges, schools.....',
                    hintStyle: TextStyle(
                      color: Color(0xffD6D6D6),
                      fontSize: 15,
                    ),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.white,
                    //   ),
                    //   borderRadius: BorderRadius.circular(18),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.white,
                    //   ),
                    //   borderRadius: BorderRadius.circular(30),
                    // ),
                    // focusedBorder: OutlineInputBorder(border),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
