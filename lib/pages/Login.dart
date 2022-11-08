import 'package:book_library/pages/Dashboard.dart';
import 'package:book_library/pages/Options.dart';
import 'package:book_library/pages/SignUp.dart';
import 'package:flutter/material.dart';
import 'Animation.dart';

class Login extends StatelessWidget{
 static String routeName ="/LoginScreen";

  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child:Container(
        child: Column(
           children:<Widget>[
               Container(
               height: 400,
               decoration: BoxDecoration(
                   image: DecorationImage(
                   image: AssetImage('assets/images/LoginGif.gif'),
                   fit: BoxFit.fill
                   ),
                  ),
                  child:Stack(
                      children:<Widget>[
                     //  Positioned(
                     //       left: 30,
                     //       width: 80,
                     //       height: 200,
                     //       child: Container(
                     //       decoration: BoxDecoration(
                     //       image: DecorationImage(
                     //       image: AssetImage('assets/images/light-1.png')
                     //    ),
                     //   ),
                     //  ),
                     // ),
                     // Positioned(
                     //   left: 150,
                     //   width: 80,
                     //   height: 150,
                     //   child: Container(
                     //           decoration: BoxDecoration(
                     //           image: DecorationImage(
                     //           image: AssetImage('assets/images/light-2.png')
                     //        ),
                     //      ),
                     //    ),
                     //  ),
                     // Positioned (
                     //   right:   40,
                     //   top:     40,
                     //   width:   80,
                     //   height:  150,
                     //   child:   Container(
                     //            decoration: BoxDecoration(
                     //            image: DecorationImage(
                     //            image: AssetImage('assets/images/clock.png')
                     //          ),
                     //         ),
                     //        ),
                     //       ),
                     Positioned(
                           child: Container(
                           margin: EdgeInsets.only(top: 310),
                           child: Center(
                        //   child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(30.0),
                 child: Column(
                 children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10),
                       boxShadow:[
                            BoxShadow(
                            color: Color.fromRGBO(239, 236, 225, 1.0),
                            blurRadius: 20.0,
                            offset: Offset(0, 10)
                         ),
                       ],
                     ),
                     child:Column(
                       children: <Widget>[
                         Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black12))
                           ),
                           child: TextField(
                               decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Email or Phone number",
                               hintStyle: TextStyle(color: Colors.grey[400])
                             ),
                           ),
                         ),
                         Container(
                           padding: EdgeInsets.all(8.0),
                           child: TextField(
                             decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: "Password",
                                 hintStyle: TextStyle(color: Colors.grey[400])
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(height: 30,),
            GestureDetector(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
               );
              },
              child:Container(
                       height: 50,
                       decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       gradient: LinearGradient(
                           colors: [
                            Color.fromRGBO(238, 182, 16, 1.0),
                            Color.fromRGBO(224, 188, 110, 1.0),
                            ]
                           ),
                          ),
                        child:Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                     ),
                    ),
                   SizedBox(height: 40,),
                   Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(
                       238, 182, 16, 1.0), fontWeight: FontWeight.bold),),
                     SizedBox(height: 15,),
                   GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => SignUp()),
                       );
                     },
                  child: Text("Sign Up", style: TextStyle(color: Color.fromRGBO(
                       238, 182, 16, 1.0), fontWeight: FontWeight.bold),),

                   ),
                 ],
                 ),

               ),
             ],
           ),
         ),
       ),
     );
   }
 }