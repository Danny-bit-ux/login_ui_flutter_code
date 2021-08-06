import 'package:flutter/material.dart';
import 'package:flutter_ui_login/Screens/Welcome/welcome_screen.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
