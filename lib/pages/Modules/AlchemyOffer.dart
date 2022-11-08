import 'dart:convert';
import 'package:book_library/pages/Modules/DreamTeam.dart';
import 'package:book_library/pages/video_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:video_player/video_player.dart';
import 'package:book_library/pages/Modules/AlchemyOffer.dart';
import "colors.dart" as color;

class Alchemy extends StatefulWidget {
  const Alchemy({Key? key}) : super(key: key);

  @override
  _Alchemy createState() => _Alchemy();

}

class _Alchemy extends State<Alchemy> {
  List<String>items = ['Welcome','Alchamy Offer','Dream Team','Webinar + Emails','TechFunnel','Content'];
  String? selectedItem= 'Welcome';
  List Alchemy = [];
  bool _playArea=false;
  bool _isPlaying=false;
  bool _disposed=false;
  late VideoPlayerController _controller;

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/Alchemy.json")
        .then((value) {
      setState(() {
        Alchemy = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
    //_onTapVideo(-1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
                  decoration:_playArea==false?BoxDecoration(
                  gradient: LinearGradient(
                  colors: [
                  color.AppColor.GreenC1.withOpacity(0.9),
                  color.AppColor.GreenC2
                ],
                begin: const FractionalOffset(0.0, 0.4),
                end: Alignment.topRight,
              )):BoxDecoration(
            color: color.AppColor.gradientSecond,
          ),
          child: Column(
            children: [
                  _playArea==false?Container(
                  padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        children: [
                            InkWell(
                              onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios,
                                size: 25,
                                color: color.AppColor.secondPageIconColor),
                            ),
                            Expanded(child: Container()),
                            Icon(Icons.info_outline,
                              size: 20, color: color.AppColor.secondPageIconColor),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Modules",
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.secondPageTitleColor),
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      // Text(
                      //   "and Modules",
                      //   style: TextStyle(
                      //       fontSize: 25,
                      //       color: color.AppColor.secondPageTitleColor),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                      color.AppColor
                                          .GreenC2,
                                      color.AppColor
                                          .GreenC1.withOpacity(0.5),
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    ),
                                  ),
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => const Vi()),
                                        // );
                                      },
                                      child: Text(
                                        "Alchemy Offer",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                   ),
                                 ],
                               ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                 onTap: () {
                                 Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const DreamTeam()),
                             );
                            },
                            child: Container(
                                width: 250,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                    color.AppColor
                                    .GreenC2,
                                    color.AppColor
                                        .GreenC1.withOpacity(0.1),
                                    ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.group,
                                    size: 20,
                                    color: color.AppColor.secondPageIconColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                Text(
                                    "Dream Team.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color.AppColor.secondPageIconColor),
                                   ),
                                 ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 250,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      color.AppColor
                                          .GreenC2,
                                      color.AppColor
                                          .GreenC1.withOpacity(0.4 ),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email,
                                    size: 20,
                                    color: color.AppColor.secondPageIconColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Webinar + Emails",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color.AppColor.secondPageIconColor),
                                  ),
                                ],
                              ),
                            ),//Alchamy offer
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 250,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                    color.AppColor
                                    .GreenC2,
                                    color.AppColor
                                        .GreenC1.withOpacity(0.4 ),
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                               ),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bolt,
                                    size: 20,
                                    color: color.AppColor.secondPageIconColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Tech Funnel.",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color.AppColor.secondPageIconColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )):Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                      child: Row(
                        children: [
                            InkWell(
                            onTap:(){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const VideoInfo()),
                              );
                            },
                            child: Icon(Icons.arrow_back_ios,size: 20,color:color.AppColor.secondPageIconColor,),
                            ),
                            Expanded (child: Container()),
                            InkWell(
                            onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                            title: const Text('Case Studies'),
                            content: const Text('I help black women going through spiritual pain and depression ways to implement sustainable spiritual habits and fearlessly embrace their inner goddess gifts and powers in 4 weeks heal and thrive in their Spiritual Path while having success in every area of their lives.'),
                            actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                        ),
                         child:Icon(Icons.info_outline,
                            size: 20,
                            color: color.AppColor.secondPageTopIconColor,
                          ),
                         ),
                        ],
                      ),
                    ),
                    _playView(context),
                    _controlView(context),
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
                 child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Welcome To Alchemy Offer",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.circuitsColor),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                              Icon(Icons.loop,
                                size: 30, color: color.AppColor.loopColor),
                              SizedBox(
                              width: 10,
                              ),
                              // InkWell(
                              //   onTap: () {
                              //   OpenFile.open("/assets/PDF/flutter20.pdf");
                              //   },
                              //   child: Text('Download'),
                              // ),
                              // style: TextStyle(
                              //   fontSize: 15,
                              //   color: color.AppColor.setsColor,
                              // ),
                              // )
                               ],
                              ),
                              SizedBox(
                              width: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),

                    Expanded(child: _listview()),
                  ],
                ),
              ))
            ],
          ),
        ),
    );
  }
  Widget _controlView(BuildContext context){
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: color.AppColor.gradientSecond,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: ()async{

          }, child: Icon(Icons.fast_rewind,
            size: 36,
            color: Colors.white,
          )
          ),
          TextButton(onPressed: ()async{
            if(_isPlaying){
              setState(() {
                _isPlaying=false;
              });
              _controller.pause();
            }else{
              setState(() {
                _isPlaying=true;
              });
              _controller.play();
            }
          },
              child: Icon(_isPlaying?Icons.pause:Icons.play_arrow,
              size: 36,
              color: Colors.white,
           ),
          ),
          TextButton(onPressed: ()async{

          },
              child: Icon(Icons.fast_forward,
              size: 36,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  Widget _playView(BuildContext context){
    final controller = _controller;
    if(controller!=null && controller.value.isInitialized){
      return AspectRatio(
        aspectRatio: 16/9,
        child: VideoPlayer(controller),
      );
      }else{
      return AspectRatio(
          aspectRatio: 16/9,
          child:  Center( child: Text("Preparing.....",style: TextStyle(fontSize: 20,color: Colors.white60),)));
      }
  }
  void _onControllerUpdate()async{
    final controller = _controller;
    if(controller==null){
      debugPrint("controller is null");
      return;
    }
    if(!controller.value.isInitialized){
      debugPrint("Controller Can not be initialized");
      return;
    }
    final playing = controller.value.isPlaying;
    _isPlaying=playing;
  }
  // _initializeVideo(int index) async {
  //   final controller = VideoPlayerController.network(
  //       Alchemy[index]["videoUrl"]);
  //   _controller = controller;
  //
  //   setState(() {});
  //   controller..initialize().then((_){
  //     controller.addListener(_onControllerUpdate);
  //     controller.play();
  //     setState(() {});
  //   });
  // }
  _onTapVideo(int index){
  //  _initializeVideo(index);
  }
  _listview(){
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        itemCount: Alchemy.length,
        itemBuilder: (_, int index){
          return GestureDetector(
            onTap: (){
              _onTapVideo(index);
              debugPrint(index.toString());
              setState(() {
                if(_playArea==false){
                  _playArea=true;
                }
              });
            },
            child: _buildcard(index),
          );
        });
  }
  _buildcard(int index){
    return Container(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        Alchemy[index]["thumbnail"],
                      ),
                      fit:BoxFit.cover,
                    ),
                  ),
               ),
               SizedBox(width: 10,),
               Flexible(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    Alchemy[index]["title"],
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      Alchemy[index]["time"],
                      style: TextStyle(
                          color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(height: 0,),
                  SizedBox(height: 2,),
                  // DropdownButton<String>(value: selectedItem, items: items.map((item) =>
                  //     DropdownMenuItem<String>(value: item, child: Text(item, style: TextStyle(fontSize: 15),
                  //     ),
                  //     ))
                  //     .toList(),
                  //   onChanged: (item) => setState(() => selectedItem = (item),
                  //   ),
                  // ),
                  ],
                 ),
                ),
               ],
              ),
              SizedBox(height: 18,),
              Row(
              children: [
              for(int i=0; i<70; i++)
                i.isEven?Container(
                  width: 6,
                  height: 1,
                  decoration: BoxDecoration(
                      color: Color(0xFF839fed),
                      borderRadius: BorderRadius.circular(2)
                  ),
                ):Container(
                  width: 3,
                  height: 1,
                  color: Colors.white,
                ),
            ],

          )

        ],

      ),

    );

  }
}
