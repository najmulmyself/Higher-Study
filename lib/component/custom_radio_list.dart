// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:higher_study/screens/college_list_screen.dart';
import 'package:higher_study/screens/dummy_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomRadioList extends StatefulWidget {
  CustomRadioList({
    required this.title,
    required this.icon,
  });
  final title;
  final icon;

  @override
  State<CustomRadioList> createState() => _CustomRadioListState();
}

class _CustomRadioListState extends State<CustomRadioList> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      activeColor: Color(0xff0E3C6E),
      toggleable: true,
      controlAffinity: ListTileControlAffinity.trailing,
      value: 'Bachelor of Engineering',
      groupValue: '',
      title: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => CollegeList(),
          //   ),
          // );
          pushNewScreen(
            context,
            withNavBar: true,
            screen: CollegeList(),
            // customPageRoute: MaterialPageRoute(
            //   builder: (context) => CollegeList(),
            // ),

            // settings: RouteSettings(name: '/collegeList'));
          );
        },
        child: Row(
          children: [
            Icon(widget.icon),
            SizedBox(
              width: 15,
            ),
            Text(widget.title!)
          ],
        ),
      ),
      onChanged: (newValue) {
        setState(() {
          // value = newValue.toString();
        });
      },
    );
  }
}
