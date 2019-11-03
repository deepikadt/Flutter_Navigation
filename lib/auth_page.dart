import 'package:flutter/material.dart';

import 'home.dart';
import 'model/user.dart';

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
              child: Text("Move to Screen1"),
              onPressed: () {

                //Moving to Screen1 . After moving the stack have Auth screen and then Screen1 on top of that.
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => Screen1(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _isBack= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
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
                //moving to the Home screen and also taking data using model class User. Also this screen will get data when we will come back to this screen from home.
                _isBack = await Navigator.push(
                  context,
                  MaterialPageRoute<bool>(
                    builder: (context) => Home(user: User(firstname: "deepika",lastname: "tripathi")),
                  ),
                );
              },
            ),
            _isBack==null?Container():(_isBack?Center(child:Text("You are back"),) : Container()),
          ],
        ),
      ),
    );
  }
}

