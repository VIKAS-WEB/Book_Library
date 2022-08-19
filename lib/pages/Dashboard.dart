import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override

  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage>{

  final List<String> _listItem = [
    'assets/images/h.png',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/three.jpg',
    'assets/images/two.jpg',
    'assets/images/five.jpg',
    'assets/images/four.jpg',
  ];

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.grey[600],

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover
                  ),
                ),
             // child: Center(child: Text("0")),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
           child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/cvpic.webp'),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.6),]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("KEA BUILDER", style: TextStyle(color: Colors.white, fontSize:
                      35, fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                     GestureDetector(
                       onTap: () {

                         Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) => const VideoInfo()),
                         );
                       },

                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child:Material(
                          color: Colors.transparent,
                          child:InkWell(
                            borderRadius: BorderRadius.circular(20),
                        child:Center(
                          child:Text("Let's Start", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),),
                        ),splashColor: Colors.black.withOpacity(0.9),

                      ),
                     ),
                      ),
                     ),

                      SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Expanded(child: GridView.count(
                crossAxisCount:2,
                padding: EdgeInsets.all(0),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children:_listItem.map((item) => Card(
                  color: Colors.transparent,
                  elevation: 0,
                   child: Material(
                     color: Colors.transparent,
                    child:InkWell(
                      borderRadius: BorderRadius.circular(20),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VideoInfo()),
                        );
                      },
                      splashColor: Colors.white.withOpacity(0.9),
                      child: Container(
                         child:Ink(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.fill,
                        ),
                    ),
                    child: Transform.translate(
                      offset: Offset(57, -60),
                      child:Container(
                        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 73),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Icon(Icons.format_list_bulleted_sharp, size: 15,),
                      ),
                    ),
                  ),
                ),
                    ),
                    ),
                )).toList(),

              )),

            ],
          ),
        ),
      ),
    );
  }
}