import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context){
  final icon = CupertinoIcons.moon_stars;
  return AppBar(
    leading: BackButton(),
    backgroundColor: Color(0xff1d3047),
    elevation: 0,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(icon))
    ],
  );
}