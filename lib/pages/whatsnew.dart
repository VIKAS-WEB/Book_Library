import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'download_page.dart';

class whatsnew extends StatelessWidget {
  const whatsnew({Key? key}) : super(key: key);

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
