import 'package:flutter/material.dart';
import 'package:flutter_ui_login/Components/rounded_button.dart';
import 'package:flutter_ui_login/Screens/Login/login_screen.dart';
import 'package:flutter_ui_login/Screens/Signup/sign_up_screen.dart';
import 'package:flutter_ui_login/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("WELCOME TO EDU", style: TextStyle(fontWeight: FontWeight.bold)),
          RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              }),
          RoundedButton(
              text: "SIGN UP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
              color: kPrimaryLightColor,
              textColor: Colors.black),
        ],
      ),
    );
  }
}
