import 'package:flutter/material.dart';

class FormTextLogin extends StatelessWidget {
  IconData icon;
  String text;
  bool password;
  TextEditingController controller;
  FormFieldValidator<String> validator;
  TextInputType keybordType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;

  FormTextLogin(
    this.icon,
    this.text, {
    this.password = false,
    this.controller,
    this.validator,
    this.keybordType,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      textInputAction: TextInputAction.go,
      keyboardType: keybordType,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
        icon: Icon(
          icon,
          size: 35,
          color: Colors.white,
        ),
      ),
      style: TextStyle(fontSize: 20, color: Colors.white),
    );
  }
}
