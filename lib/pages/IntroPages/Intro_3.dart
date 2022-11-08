import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {

  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
         "assets/images/ecommerce.gif",
         fit: BoxFit.contain,
      ),
    );
  }
}
