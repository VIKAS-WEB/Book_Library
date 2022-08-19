import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);

List<BoxShadow> shadowlist = [
  BoxShadow( color: (Colors.grey[300])!, blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [

  {'name': 'Novels', 'iconPath': 'images/nv.png'},
  {'name': 'Database', 'iconPath': 'images/db.png'},
  {'name': 'Technology', 'iconPath': 'images/java.png'},
  {'name': 'Documentries', 'iconPath': 'images/nvv.png'},
  {'name': 'Science', 'iconPath': 'images/martian.png'},


];
List<Map> drawerItems=[

  {
    'icon':  Icons.home,
    'title' : 'Home'
  },
  {
    'icon': Icons.note_alt,
    'title' : 'Notes'
  },
  {
    'icon': Icons.download,
    'title' : 'Downloads'
  },
  {
    'icon': Icons.person,
    'title' : 'Profile'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },

];
