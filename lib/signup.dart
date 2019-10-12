import 'package:flutter/material.dart';

import 'home.dart';
import 'model/user.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isLogout = false;



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
                _isLogout = await Navigator.push(
                  context,
                  MaterialPageRoute<bool>(
                    builder: (context) => Home(user: User(firstname: "deepika",lastname: "tripathi")),
                  ),
                );
              },
            ),
            _isLogout ? Center(child:Text("You are logged out") ,): Container(),
          ],
        ),
      ),
    );
  }
}
