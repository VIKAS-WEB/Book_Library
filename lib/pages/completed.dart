import 'package:book_library/pages/download_page.dart';
import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  List data = [
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color(0xff5a65ff)},
    {"color": Color(0xff96da45)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color(0xff5a65ff)},
    {"color": Color(0xff96da45)},
  ];

  final colorwhite = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffeef0f5),
             body: Container(child: GridView(
             children: [
                 InkWell(
                 onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const VideoInfo()),
                  );
                  },
                  child:Container(
                   width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:Colors.lightGreenAccent,
                     image: DecorationImage(
                          image: AssetImage(
                          'assets/images/trimg.png',
                         ),
                       fit: BoxFit.cover,
                      ),
                    ),
                   ),
                   ),
                InkWell(
                  onTap:(){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DownloadPage()),
                  );
                  },

                  child:Container(
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:Colors.lightGreenAccent,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/ITT.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ),
      InkWell(
          onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DownloadPage()),
            );
          },
               child:Container(
                 width: 70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   color:Colors.lightGreenAccent,
                   image: DecorationImage(
                     image: AssetImage(
                       'assets/images/ml.png',
                     ),
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
              ),
               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/pt.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/hb.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/swift.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/pt.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),

               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/ITT.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),

               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/ml.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
               InkWell(
                 onTap:(){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DownloadPage()),
                   );
                 },
                 child:Container(
                   width: 70,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     color:Colors.lightGreenAccent,
                     image: DecorationImage(
                       image: AssetImage(
                         'assets/images/hb.png',
                       ),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),


             ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
             ),
            ),
           );
         }
       }