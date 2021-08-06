import 'package:flutter/material.dart';
import 'package:flutter_ui_login/constants.dart';

class AlreadyHaveAccountChek extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountChek({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "AlreadyHaveAccountChek",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign Up' : 'Sign In',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
