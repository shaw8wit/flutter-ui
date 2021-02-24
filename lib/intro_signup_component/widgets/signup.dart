import 'package:flutter/material.dart';

import 'input_field_signup.dart';

class Signup extends StatefulWidget {
  final bool center;

  Signup(this.center);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 400),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xff5D54A3),
            ),
            child: Center(
              child: Text(
                "Try it free 7 days then \$20/mo. thereafter",
                style: TextStyle(fontFamily: 'Lato', color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.all(widget.center ? 22 : 40),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InputFieldSignup('First Name'),
                  InputFieldSignup('Last Name'),
                  InputFieldSignup('Email Address'),
                  InputFieldSignup('Password'),
                  FlatButton(
                    color: Color(0xff4BCC8A),
                    minWidth: double.infinity,
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                        _formKey.currentState.reset();
                      }
                    },
                    child: Text(
                      'CLAIM YOUR FREE TRIAL',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Center(
                      child: Text(
                        'By clicking the button you are agreeing to our Terms and Services',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
