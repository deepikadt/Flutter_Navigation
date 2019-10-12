import 'package:flutter/material.dart';
import 'package:flutter_navigation/model/user.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool _isLogout=false;

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
                _isLogout = await Navigator.push(
                  context,
                  MaterialPageRoute<bool>(
                    builder: (context) => Home(user: User(firstname: "deepika",lastname: "tripathi")),
                  ),
                );
              },
            ),
            _isLogout ? Center(child:Text("You are logged out"),) : Container(),
          ],
        ),
      ),
    );
  }
}
