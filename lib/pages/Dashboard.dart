import 'dart:io';
import 'package:book_library/pages/Ecommerce.dart';
import 'package:book_library/pages/NumbersWidget.dart';
import 'package:book_library/pages/Profile.dart';
import 'package:book_library/pages/coming_soon_page.dart';
import 'package:book_library/pages/download_page.dart';
import 'package:book_library/pages/video_detail_page.dart';
import 'package:book_library/pages/whatsnew.dart';
import 'package:flutter/material.dart';
import 'CardWidget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  late TabController _tabController;


  @override
  void initState(){
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)..addListener(() {});
     super.initState();
  }

  final List<String> _listItem = [
    'assets/images/tr=.png',
    'assets/images/tr2.png',
    'assets/images/tr3.png',
    'assets/images/tr4.png',
    'assets/images/tr.png',
    'assets/images/tr3.png',
    'assets/images/tr.png',
    'assets/images/tr4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeef0f5),
        appBar: AppBar(
        backgroundColor: Color(0xff1d3047),
        elevation: 0,
        //leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
            Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
                onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover),
                  ),
                    // child: Center(child: Text("0")),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                  top: 0,
                  left: 0,
                  right: 150,
                  bottom: 0,
                ),
                // child: Container(
                //          child: Text(
                //          "My Courses ",
                //          textAlign: TextAlign.left,
                //          style: TextStyle(
                //          fontSize: 30,
                //          fontWeight: FontWeight.bold,
                //          color: Color(0xff1d3047),
                //          fontFamily: 'Muli',
                //     ),
                //   ),
                // ),
              ),
                  Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent),
                        child: TabBar(
                        isScrollable: true,
                        indicatorPadding: EdgeInsets.all(15),
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xff1d3047),
                        labelStyle: TextStyle(fontSize: 19),
                        labelPadding:EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 25),
                        indicator: BoxDecoration(
                            color: Color(0xff1d3047),
                            borderRadius: BorderRadius.circular(20)),
                            controller: _tabController,
                            tabs: [
                              Text('All',style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Muli'),),
                              //Text("Ecommerce",style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Muli'),),
                              Text('Whats New' ,style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Muli'),),
                              Text('Completed',style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Muli'),),
                            ]
                          ),
                        ),
                   const SizedBox(height: 20),//
                   Expanded(
                     child:TabBarView(
                           controller: _tabController, children: [
                           CardWidget(),
                           ComingSoonPage(),
                           CardWidget(),
                       ]
                     ),
                   ),
                       //Navigation Menu Starts From Here
                      // Drawer()
                       // Container(
                      //   width: double.infinity,
                     //   height: 250,
                    //   decoration: BoxDecoration(
                   //       borderRadius: BorderRadius.circular(20),
                  //       image: DecorationImage(
                 //           image: AssetImage('assets/images/cvpic.webp'),
                //           fit: BoxFit.cover)),
               //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20),
              //       gradient:
              //           LinearGradient(begin: Alignment.bottomRight, colors: [
              //         Colors.black.withOpacity(.3),
              //         Colors.black.withOpacity(.6),
              //       ]),
              //     ),
              //     child: Column(
               //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: <Widget>[
              //         Text(
              //           "KEA BUILDER",
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 35,
              //               fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           height: 30,
              //         ),
              //         GestureDetector(
              //           onTap: () {
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => const VideoInfo()),
              //             );
              //           },
              //           child: Container(
              //             height: 50,
              //             margin: EdgeInsets.symmetric(horizontal: 40),
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 color: Colors.white),
              //             child: Material(
              //               color: Colors.transparent,
              //               child: InkWell(
              //                 borderRadius: BorderRadius.circular(20),
              //                 child: Center(
              //                   child: Text(
              //                     "Let's Start",
              //                      style: TextStyle(
              //                         color: Colors.grey[900],
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //                 splashColor: Colors.black.withOpacity(0.9),
              //               ),
              //             ),
              //           ),
              //         ),
              //           SizedBox(
              //           height: 30,
              //         ),
              //       ],
              //     ),
              //   ),
              // // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Expanded(
              //     child: GridView.count(
              //     crossAxisCount: 2,
              //     padding: EdgeInsets.all(0),
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //     children: _listItem.map((item) => Card(
              //               color: Colors.transparent,
              //               elevation: 0,
              //               child: Material(
              //                    color: Colors.transparent,
              //                    child: InkWell(
              //                    borderRadius: BorderRadius.circular(20),
              //                    onTap: () {
              //                       Navigator.push(
              //                       context,
              //                       MaterialPageRoute(builder: (context) => const VideoInfo()),
              //                     );
              //                   },
              //                   splashColor: Colors.white.withOpacity(0.9),
              //                   child: Container(
              //                       child: Ink(
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(item),
              //                           fit: BoxFit.fill,
              //                         ),
              //                       ),
              //                       child: Transform.translate(
              //                         offset: Offset(57, -60),
              //                         child: Container(
              //                               margin: EdgeInsets.symmetric(
              //                               horizontal: 70, vertical: 73),
              //                               decoration: BoxDecoration(
              //                               borderRadius: BorderRadius.circular(10),
              //                               color: Colors.white),
              //                               child: Icon(
              //                               Icons.format_list_bulleted_sharp,
              //                               size: 15,
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //             ))
              //         .toList(),
              //       ),
              //     ), //First Image Code
                ],
              ),
            ),
          ),
        );
      }
   }