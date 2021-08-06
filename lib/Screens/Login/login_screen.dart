import 'package:flutter/material.dart';
import 'package:flutter_ui_login/Components/already_have_account_check.dart';
import 'package:flutter_ui_login/Components/rounded_button.dart';
import 'package:flutter_ui_login/Components/rounded_input_field.dart';
import 'package:flutter_ui_login/Components/rounded_password_field.dart';
import 'package:flutter_ui_login/Screens/Signup/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
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
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(onChanged: (value) {}),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              AlreadyHaveAccountChek(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
