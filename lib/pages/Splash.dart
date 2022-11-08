import 'package:book_library/pages/Dashboard.dart';
import 'package:book_library/pages/Landing.dart';
import 'package:book_library/pages/Login.dart';
import 'package:book_library/pages/OnBoarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
     super.initState();
     _navigatetohome();
  }
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1800), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>OnBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color:Colors.white,
        child:Image.asset("assets/images/Kea New Logo.png",
          width: 20,
          height: 20,
        ),
     );
   }
 }
 class SecondScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
