import 'package:flutter/material.dart';

import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              // For adding margins
              Container(margin: EdgeInsets.only(top: 25.0)),
              submitButton(),
            ],
          ),
        )
    );
  }


  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'name@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      onSaved: (String value) {
        email = value;
      },
      validator: validateEmail,
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      onSaved: (String value) {
        password = value;
      },
      validator: validatePassword,
    );
  }

  Widget submitButton() {
    return RaisedButton(
        child: Text(
            'Submit',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            )
        ),
        color: Colors.red,
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
          }
        });
  }

}



