// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TabS extends StatelessWidget {
  // TabController a = TabController(length: 3, vsync: );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ]),
        ),
        body: TabBarView(children: [
          Text("1"),
          Text("2"),
          Text("3"),
        ]),
      ),
    );
  }
}
