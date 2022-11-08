import 'dart:io';

import 'package:book_library/model/user.dart';
import 'package:book_library/pages/appbar_widget.dart';
import 'package:book_library/pages/profile_widget.dart';
import 'package:book_library/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import 'ButtonWidget.dart';
import 'TextFieldWidget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context)  => Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 40,
            ),
        ProfileWidget(
        imagePath: user.imagePath,
        isEdit: true,
        onClicked: () async {
           final image = await ImagePicker.pickImage(source: ImageSource.gallery);

           if(image == null)return;

           final directory = await getApplicationDocumentsDirectory();
           final name = basename(image.path);
           final imageFile= File('${directory.path}/$name');
           final newImage = await File(image.path).copy(imageFile.path);
           setState(() => user = user.copy(imagePath: newImage.path));
           },
        ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged:(name) => user = user.copy(name: name),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged:(email) => user = user.copy(email: email),
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines:5,
              onChanged:(about) => user = user.copy(about: about),
            ),
            const SizedBox(height:24),
            ButtonWidget(
              text:'Save',
              onClicked:(){
                UserPreferences.setUser(user);
                Navigator.of(context).pop();
              } ,
            ),
          ],
      ),
  );
}
