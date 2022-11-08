import 'dart:convert';

import 'package:book_library/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static late SharedPreferences _preferences;
  static const _keyUser = 'user';
  static const myUser = User(
    imagePath:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDyAtS2NEE3kIemaZAAtHVXQYSrPo70pOx8w&usqp=CAU',
    name: 'Vikas',
    email: 'vikas.s@gmail.com',
    about: 'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
    isDarkMode: false,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

   await _preferences.setString(_keyUser,json);

  }

  static User getUser(){

    final json = _preferences.getString(_keyUser);

    return json == null?myUser:User.fromJson(jsonDecode(json));

  }

}