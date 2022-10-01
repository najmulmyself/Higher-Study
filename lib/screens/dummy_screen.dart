// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DummyW extends StatefulWidget {
  const DummyW({Key? key}) : super(key: key);

  @override
  State<DummyW> createState() => _DummyWState();
}

class _DummyWState extends State<DummyW> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   primary: false,
        //   backgroundColor: Color(0xff0E3C6E),
        //   leading: IconButton(
        //     onPressed: null,
        //     icon: CircleAvatar(
        //       backgroundColor: Colors.white,
        //       child: Icon(Icons.arrow_back),
        //     ),
        //   ),
        //   actions: [
        //     CircleAvatar(
        //       backgroundColor: Colors.white,
        //       child: Icon(Icons.bookmark_added_rounded),
        //     ),
        //   ],
        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              floating: true,
              expandedHeight: 180,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/Background.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('College Name'),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // ListView.builder(
                  //   itemBuilder: (c, i) {
                  //     return Container(
                  //       margin: EdgeInsets.all(10),
                  //       height: 50,
                  //       width: double.infinity,
                  //       color: Colors.red,
                  //       child: Text('Hello $i'),
                  //     );
                  //   },
                  //   itemCount: 50,
                  // ),
                  // for (var i = 1; i <= 50; i++)
                  //   ListTile(
                  //     title: Text(i.toString()),
                  //   ),
                  Flexible(
                    // has to be wrapped with flexible or expanded
                    child: DefaultTabController(
                      length: 4,
                      child: Scaffold(
                        appBar: PreferredSize(
                          preferredSize: Size.fromHeight(50.0),
                          child: AppBar(
                            backgroundColor: Colors.white,
                            bottom: TabBar(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              controller: _tabController,
                              indicatorColor: Color(0xff0E3C6E),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              tabs: [
                                Tab(
                                  text: 'About College',
                                ),
                                Tab(
                                  text: 'Hostel facility',
                                ),
                                Tab(
                                  text: 'Q & A',
                                ),
                                Tab(
                                  text: 'Events',
                                ),
                              ],
                            ),
                          ),
                        ),
                        body: TabBarView(
                          controller: _tabController,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: SingleChildScrollView(
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10),
                                        Text(
                                          'Description',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.'),
                                        SizedBox(height: 10),
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                            'assets/images/Background.png'),
                                      ],
                                    ),
                                    // Positioned(
                                    //   bottom: 0,
                                    //   child: ElevatedButton(
                                    //     onPressed: () {},
                                    //     child: Text('Apply Now'),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                            Text('Courses'),
                            Text('Reviews'),
                            Text('Dummy'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SliverFillRemaining(
            //   child: ListView.builder(
            //     itemBuilder: (c, i) {
            //       return Container(
            //         margin: EdgeInsets.all(10),
            //         height: 50,
            //         width: double.infinity,
            //         color: Colors.red,
            //         child: Text('Hello $i'),
            //       );
            //     },
            //     itemCount: 50,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
