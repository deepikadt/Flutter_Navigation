import 'package:flutter/material.dart';
import 'package:flutter_navigation/model/user.dart';
import 'package:flutter_navigation/utils/strings_constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _isLogout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //sending data through navigator
            RaisedButton(
              child: Text("Move to home"),
              onPressed: () async {
                _isLogout = await Navigator.pushNamed(
                    context, AppStringConst.home,
                    arguments:
                        User(firstname: "DEEPIKA", lastname: "TRIPATHI"));
              },
            ),
            _isLogout != null && _isLogout == true
                ? Center(
                    child: Text("You are logged out"),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
