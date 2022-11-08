import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset(
        "assets/images/wlcm.gif",
        fit: BoxFit.contain,
        ),
        padding: const EdgeInsets.only(top: 100, left: 30,right: 30,bottom:25,),
      // child: Center(
      //   child: Text('Page1'),
      // ),
      );
   }
}
