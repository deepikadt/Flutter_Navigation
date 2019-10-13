import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What's in the app?"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              height: 400.0,
              child: Text(
                "This app is a tutorial for learning the navigation concepts for the beginners in Flutter. \n \nHappy learning!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blue),
              ),
            ),
            RaisedButton(
              child: Text("Move to Auth page"),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/auth');
              },
            ),
          ],
        ),
      ),
    );
  }
}
