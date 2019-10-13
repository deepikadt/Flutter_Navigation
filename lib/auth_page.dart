import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils/strings_constants.dart';


class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Move to signup Page"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppStringConst.signup
                );
              },
            ),
            RaisedButton(
              child: Text("Move to Login Page"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                 AppStringConst.login
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
