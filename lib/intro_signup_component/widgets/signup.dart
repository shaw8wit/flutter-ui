import 'package:flutter/material.dart';
import 'package:flutter_ui/intro_signup_component/widgets/input_field_signup.dart';

class Signup extends StatefulWidget {
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
              color: Colors.deepPurple,
            ),
            child: Center(
              child: Text(
                "Try it free 7 days then \$20/mo. thereafter",
                style: TextStyle(fontFamily: 'Lato', color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InputFieldSignup('First Name'),
                  InputFieldSignup('Last Name'),
                  InputFieldSignup('Email Address'),
                  InputFieldSignup('Password'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: FlatButton(
                      minWidth: double.infinity,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text('Processing Data')));
                          _formKey.currentState.reset();
                        }
                      },
                      child: Text('Submit'),
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
