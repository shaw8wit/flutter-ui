import 'package:flutter/material.dart';

class InputFieldSignup extends StatelessWidget {
  final String string;

  InputFieldSignup(this.string);

  String validator(value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: string,
        labelStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
      validator: validator,
    );
  }
}
