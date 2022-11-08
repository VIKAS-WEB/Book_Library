import 'package:book_library/pages/Dashboard.dart';
import 'package:book_library/pages/Ecommerce.dart';
import 'package:book_library/pages/Login.dart';
import 'package:book_library/pages/Options.dart';
import 'package:book_library/pages/Splash.dart';
import 'package:book_library/pages/Testing.dart';
import 'package:book_library/pages/edit_profile_page.dart';
import 'package:book_library/pages/root_app.dart';
import 'package:book_library/theme.dart';
import 'package:book_library/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:book_library/pages/profile.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Builder(builder: (context) =>
      MaterialApp(
        theme: ThemeData(
        fontFamily: 'Muli',
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SplashScreen(),
        ),
       ),
      );
   }
}


