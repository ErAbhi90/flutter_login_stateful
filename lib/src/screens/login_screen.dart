import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();

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


}


Widget emailField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Email Address',
      hintText: 'name@example.com',
    ),
    keyboardType: TextInputType.emailAddress,
  );
}

Widget passwordField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Password',
    ),
    obscureText: true,
  );
}

Widget submitButton() {
  return RaisedButton(
      child: Text('Submit'),
      color: Colors.red,
      onPressed: () {

      });
}
