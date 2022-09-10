// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DummyW extends StatelessWidget {
  const DummyW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          primary: false,
          backgroundColor: Color(0xff0E3C6E),
          leading: IconButton(
            onPressed: null,
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back),
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.bookmark_added_rounded),
            ),
          ],
        ),
        body: Center(
          child: Text('Dummy Screen'),
        ),
      ),
    );
  }
}
