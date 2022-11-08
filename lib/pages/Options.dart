import 'package:book_library/pages/Dashboard.dart';
import 'package:book_library/pages/Ecommerce.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  late AnimationController _animationController2;

  @override
  void initState() {
      super.initState();

      _animationController = AnimationController(
      duration: Duration(milliseconds: 50),
      vsync: this,
      lowerBound: 0,
      upperBound: 0.1,
      )..addListener((){
      setState((){});
      });

      _animationController2 = AnimationController(
      duration: Duration(milliseconds: 50),
      vsync: this,
      lowerBound: 0,
      upperBound: 0.1,
      )..addListener((){
      setState((){});
     }
    );
  }

  @override
  void dispose(){
    _animationController.dispose();
    _animationController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double  scale1 = 1 + _animationController.value;
    double scale2 = 1 + _animationController2.value;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(
          gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                Colors.orange,
                Colors.grey,
              ],
           ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: h/4,
            ),
            Text('Hello ! User', style: TextStyle(
                fontSize: 32, color: Colors.white, fontFamily: 'Pacifico',
                fontWeight: FontWeight.w600
            ),
            ),
            SizedBox(
              height: h/5,
            ),
            Text('Please Select Options', textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white, fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold
            ),
            ),

            SizedBox(height: h*0.05),

            GestureDetector(
              onTapUp: onTapUp,
              onTapDown: onTapDown,
              onTapCancel: onTapCancel,
              child: Transform.scale(
                scale: scale1,
                child: Container(
                  alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //     color: Colors.white12,
                  //     borderRadius: BorderRadius.circular(300)
                  // ),
                  child:SingleChildScrollView(
                  child: Container(
                      alignment: Alignment.center,
                      width: w/4,
                      height: h/8,
                      // child:Text('Courses', style: TextStyle(fontSize: 20, color:Color(0xff1d3047),fontFamily: 'Muli', fontWeight: FontWeight.bold),
                      //),
                       //
                      child: Image.asset('assets/images/CCR.png', fit: BoxFit.fill),
                    ),
                  ),
                  ),
                ),
                ),

            SizedBox(height: h*0.03,),
            Text('or', textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white, fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: h*0.03,),

            GestureDetector(
              onTapUp: onTapUp2,
              onTapDown: onTapDown2,
              onTapCancel: onTapCancel2,
              child: Transform.scale(
                  scale: scale2,
                  child: Container(
                  alignment: Alignment.center,
                  height: h/7,
                  width:  w/4,
                  //     decoration: BoxDecoration(
                  //     color: Colors.white24,
                  //     borderRadius: BorderRadius.circular(300)
                  // ),
                  child: Container(
                      alignment: Alignment.center,
                      height: h/8,
                      // child:Text('Ecommerce', style: TextStyle(fontSize: 20, color:Color(0xff1d3047),fontFamily: 'Muli', fontWeight: FontWeight.bold),
                      // ),
                      child: Image.asset('assets/images/shop.png', fit: BoxFit.contain,)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  onTapUp(TapUpDetails details){
    _animationController.reverse(
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
  onTapDown(TapDownDetails details){
    _animationController.forward();
  }
  onTapCancel(){
    _animationController.reverse();
  }
  onTapUp2(TapUpDetails details){
    _animationController2.reverse();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Ecommerce()),
    );
  }
  onTapDown2(TapDownDetails details){
    _animationController2.forward();
  }
  onTapCancel2(){
    _animationController2.reverse();
  }

}