// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:higher_study/component/tab.dart';

class CollegeDetails extends StatefulWidget {
  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 70,
              color: Color(0xff0E3C6E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 200,
              child: Image.asset(
                'assets/images/coll_det1.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GHJK Engineering college',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 18),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('4.3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                          Icon(Icons.star, color: Colors.white),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   child: TabBar(
            //     controller: _tabController,
            //     tabs: [
            //       Tab(
            //         text: 'About',
            //       ),
            //       Tab(
            //         text: 'Courses',
            //       ),
            //       Tab(
            //         text: 'Reviews',
            //       ),
            //     ],
            //   ),
            // ),
            // TabBarView(
            //   controller: _tabController,
            //   children: [
            //     Text('About'),
            //     Text('Courses'),
            //     Text('Reviews'),
            //   ],
            // ),
            Flexible(
              // has to be wrapped with flexible or expanded
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: AppBar(
                      backgroundColor: Colors.white,
                      bottom: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.green,
                        labelColor: Colors.green,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: 'About',
                          ),
                          Tab(
                            text: 'Courses',
                          ),
                          Tab(
                            text: 'Reviews',
                          ),
                        ],
                      ),
                    ),
                  ),
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                      Text('About'),
                      Text('Courses'),
                      Text('Reviews'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
