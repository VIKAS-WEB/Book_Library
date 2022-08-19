import 'package:book_library/json/home_json.dart';
import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/material.dart';
import "colors.dart" as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black45.withOpacity(0.5),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
          child: Stack(
          children: [
          Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                       Container(
                                height: 500,
                                decoration: BoxDecoration(
                                image: DecorationImage(
                                image: AssetImage("assets/images/cvpic.webp"),
                                fit: BoxFit.cover)
                        ),
                        ),
                       Container(
                        height: 500,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                              Colors.black.withOpacity(0.65),
                              Colors.black.withOpacity(0),
                            ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter)),
                      ),
                      Container(
                        height: 430,
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/loggg.png", width: 300,),
                            SizedBox(
                              height: 20,
                            ),
                            Text("'Develop a passion for learning. If you do, you will never cease to grow.'", style: TextStyle(fontSize: 11, color: Colors.white),),
                          ],
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "WatchList",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VideoInfo()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  color.AppColor.setsColor,
                                  color.AppColor.gradientSecond
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Popular Courses",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                              children: List.generate(3, (index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 260,
                              height: 280,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(popularList[index]['img']),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(6)),
                            );
                          })),
                        ),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15, right: 15),
                      //   child: Text(
                      //     "New Courses",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 10),
                      //     child: Row(
                      //         children: List.generate(4, (index) {
                      //       return Container(
                      //         margin: EdgeInsets.only(right: 8),
                      //         width: 135,
                      //         height: 150,
                      //         decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //                 image: AssetImage(mylist[index]['img']),
                      //                 fit: BoxFit.fill),
                      //             borderRadius: BorderRadius.circular(6)),
                      //       );
                      //     })),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15, right: 15),
                      //   child: Text(
                      //     "Trending Courses",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 10),
                      //     child: Row(
                      //         children: List.generate(4, (index) {
                      //       return Container(
                      //         margin: EdgeInsets.only(right: 8),
                      //         width: 135,
                      //         height: 150,
                      //         decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //                 image: AssetImage(
                      //                     trendingList[index]['img']),
                      //                 fit: BoxFit.fill),
                      //             borderRadius: BorderRadius.circular(6)),
                      //       );
                      //     })),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15, right: 15),
                      //   child: Text(
                      //     "Interview Preprations",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 10),
                      //     child: Row(
                      //         children: List.generate(4, (index) {
                      //       return Container(
                      //         margin: EdgeInsets.only(right: 8),
                      //         width: 135,
                      //         height: 150,
                      //         decoration: BoxDecoration(
                      //             image: DecorationImage(
                      //                 image: AssetImage(
                      //                     originalList[index]['img']),
                      //                 fit: BoxFit.fill),
                      //             borderRadius: BorderRadius.circular(6)),
                      //       );
                      //     })),
                      //   ),
                      // ),
                    ],
                  )
                ],
              )),
          Container(
              child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Image.asset(
                          "assets/images/Klogo.png",
                          width: 45,
                          fit: BoxFit.cover,
                        )),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              //color: color.AppColor.logocolor,
                              size: 35,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Image.asset(
                              "assets/images/profile.jpeg",
                              width: 35,
                              height: 36,
                              fit: BoxFit.cover,
                            ),
                            onPressed: null),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Text(
                //       "Quiz Section",
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.w500),
                //     ),
                //     Text(
                //       "Notes",
                //       style: TextStyle(
                //           fontSize: 15,
                //           color: Colors.white,
                //           fontWeight: FontWeight.w500),
                //     ),
                //     Row(
                //       children: [
                //         Text(
                //           "Study Materials",
                //           style: TextStyle(
                //               fontSize: 15,
                //               color: Colors.white,
                //               fontWeight: FontWeight.w500),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         Icon(
                //           Icons.keyboard_arrow_down,
                //           color: Colors.white,
                //         )
                //       ],
                //     ),
                //   ],
                // )
              ],
            ),
          )),
        ],
      )),
    );
  }
}
