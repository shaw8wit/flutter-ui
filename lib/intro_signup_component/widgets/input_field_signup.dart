import 'package:flutter/material.dart';

class InputFieldSignup extends StatelessWidget {
  final String string;

  InputFieldSignup(this.string);

  String validator(value) {
    if (value.isEmpty) {
      return '$string cannot be empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextFormField(
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          labelText: string,
          labelStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff5D54A3)),
            borderRadius: BorderRadius.circular(6.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(6.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(6.0),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 26, vertical: 22),
        ),
        validator: validator,
      ),
    );
  }
}
