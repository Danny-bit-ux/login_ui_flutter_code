import 'package:flutter/material.dart';
import 'package:flutter_ui_login/Components/text_field_container.dart';
import 'package:flutter_ui_login/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: _isHidden,
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor),
          suffixIcon: IconButton(
              splashRadius: 1.0,
              icon: Icon(Icons.visibility, color: kPrimaryColor),
              onPressed: () {
                // print("Clicked Me");

                setState(() {
                  _isHidden = !_isHidden;
                });
              }),
          hintText: "Your Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
