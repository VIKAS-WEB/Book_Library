import 'package:flutter/material.dart';

import 'Dashboard.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
          children: <Widget>[
          Scaffold(
          appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
          child:Container(
          child: Column(
            children:<Widget>[
                Container(
                height: 400,
                decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/images/Aset.png'),
                      fit: BoxFit.fill
                  ),
                ),
                child:Stack(
                  children:<Widget>[
                    // Positioned(
                    //   left: 30,
                    //   width: 80,
                    //   height: 200,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage('assets/images/light-1.png')
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   left: 150,
                    //   width: 80,
                    //   height: 150,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage('assets/images/light-2.png')
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Positioned(
                    //   right: 40,
                    //   top:   40,
                    //   width: 80,
                    //   height: 150,
                    //   child:  Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //           image: AssetImage('assets/images/clock.png')
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                          child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                          child: Text("SignUp", style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.all(30.0),
                child:  Column(
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
                                  hintText: "First Name",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),
                            Container(
                                decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.black12))
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                  decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Last Name",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),
                          Container(
                                decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.black12))
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                                  decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email Id",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                               ),
                              ),
                             ),
                             Container(
                                decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.black12))
                             ),
                             padding: EdgeInsets.all(8.0),
                             child: TextField(
                                  decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone Number",
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
                          MaterialPageRoute(builder: (context) => HomePage()),
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
                          child: Text("SignUp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(
                        238, 182, 16, 1.0), fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],
          ),
        ),
    ),
    ),
    ],
    ),
    );
  }
}
