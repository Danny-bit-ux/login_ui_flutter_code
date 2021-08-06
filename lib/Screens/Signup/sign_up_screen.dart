import 'package:flutter/material.dart';
import 'package:flutter_ui_login/Components/rounded_button.dart';
import 'package:flutter_ui_login/Components/rounded_input_field.dart';
import 'package:flutter_ui_login/Components/rounded_password_field.dart';
import 'package:flutter_ui_login/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGN UP",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGN UP",
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
