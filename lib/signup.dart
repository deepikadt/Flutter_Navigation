import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils/strings_constants.dart';

import 'model/user.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var _isLogout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
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
