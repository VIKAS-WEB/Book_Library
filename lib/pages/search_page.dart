import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/material.dart';

import '../json/search_json.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    var size = MediaQuery
        .of(context)
        .size;
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Container(
            width: size.width,
            height: 35,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black45,
              )),
        ),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Top Searches",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: 12,
            ),
            Column(
                children: List.generate(searchJson.length, (index) {
                  return GestureDetector(
                    onTap: () {
                    //  Navigator.push(
                      //    context,
                       //   MaterialPageRoute(
                            //  builder: (_) =>
                                  //VideoDetailsPage(
                                 //   videoUrl: searchJson[index]['video'],
                                 // )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            width: (size.width - 36) * 0.8,
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  searchJson[index]['img']),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                        height: 70,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(
                                                0.2)))
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: (size.width - 30) * 0.4,
                                  child: Text(searchJson[index]['title'],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: (size.width - 36) * 0.2,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2, color: Colors.white),
                                  color: Colors.black.withOpacity(0.4)),
                              child: Center(
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
