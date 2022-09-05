// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.72,
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
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffffffff),
          ),
          child: Icon(
            Icons.mic,
            color: Color(0xff0E3C6E),
          ),
        ),
      ],
    );
  }
}
