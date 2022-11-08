import 'package:flutter/material.dart';

import 'CardWidget.dart';

class Navigation extends StatefulWidget {

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with  SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    _tabController = new TabController(length:3, vsync: this,initialIndex:0)..addListener(() {


    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Status',
          style: TextStyle(fontSize: 27, color:Colors.blueGrey),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: TabBar(
                isScrollable: true,
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.blueGrey,
                labelStyle: TextStyle(fontSize: 20),
                labelPadding:
                EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                indicator: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs: [
                  Text('All'),
                  Text("What's New"),
                  Text('Completed'),
                ]),
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController, children: [
              // CardWidget(),
              // CardWidget(),
              // CardWidget(),
            ]),
          )
        ],
      ),
    );
  }
}
