import 'package:book_library/pages/IntroPages/Intro_1.dart';
import 'package:book_library/pages/IntroPages/Intro_2.dart';
import 'package:book_library/pages/IntroPages/Intro_3.dart';
import 'package:book_library/pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //Controller to keep track of which page we're on
  PageController _controller = PageController();
  //Keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          //page View
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage = (index == 2);
              });
            },
          children:[
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
           ],
          ),
      //dot indicators
       Container(
         alignment: Alignment(0,0.75),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children:[
             //skip
             GestureDetector(
               onTap:(){
               _controller.jumpToPage(3);
               },
             child:Text('Skip'),
             ),
             //dot indicator
             SmoothPageIndicator(controller:  _controller, count: 3),

             //next or done
             onLastPage?
             GestureDetector(
               onTap:(){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Login()),
                 );
               },
               child:Text('Done'),
             ): GestureDetector(
               onTap:(){
                 _controller.nextPage(duration: Duration(milliseconds: 500),
                   curve: Curves.easeIn,
                 );
               },
               child:Text('Next'),
             ),
           ],
       ),
       ),
      ],
     ),
    );
  }
}
