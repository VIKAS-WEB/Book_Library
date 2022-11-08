import 'package:book_library/pages/NumbersWidget.dart';
import 'package:book_library/pages/appbar_widget.dart';
import 'package:book_library/pages/edit_profile_page.dart';
import 'package:book_library/pages/profile_widget.dart';
import 'package:book_library/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:book_library/model/user.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(
        height: 40,
        ),
          ProfileWidget(
           imagePath: user.imagePath,
           onClicked: () async {
            await Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => EditProfilePage()),
             );
            setState(() {});
           },
          ),
         const SizedBox(height: 24),
         buildName(user),
        ],
      ),
    );
  }

 Widget buildName(User user) => Column(
 children: [
   Text(user.name,
     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
   ),
   const SizedBox(height: 4),
   Text(
     user.email,
     style: TextStyle(color: Colors.grey),
   ),
   const SizedBox(height: 40),
   NumbersWidget(),
   const SizedBox(height: 50),
   buildAbout(user),

   ],


 );

 Widget buildAbout(User user) => Container(
     padding: EdgeInsets.symmetric(horizontal: 48),
     child:Column(
   crossAxisAlignment: CrossAxisAlignment.start,
   children: [
     Text('About', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
     ),
     const SizedBox(height: 16),
     Text(user.about,
      style: TextStyle(fontSize: 16, height: 1.4),
     ),
   ],
     ),
 );
}
