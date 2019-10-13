import 'package:flutter/material.dart';

import 'model/user.dart';

class Home extends StatefulWidget {
  final User user;
  Home({this.user});
  @override
  _HomeState createState() => _HomeState(user);
}

class _HomeState extends State<Home> {
  User user;
  _HomeState(this.user);
  Future<bool> _showDialog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Alert!"),
          content: Text("Are you sure you want to go to the back screen without data?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("YES"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(true);
                  },
                ),
                FlatButton(
                  child: Text("NO"),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop(false);
                  },
                )
              ],
            ),);
  }

  @override
  Widget build(BuildContext context)
  {
    return WillPopScope(
      onWillPop: _showDialog,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text("Home"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(child: Text("Data came from previous screen:")),
              Center(
                child: Text(
                  user.firstname + " " + user.lastname,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              FlatButton(
                child: Text("Back"),
                onPressed: () {
                  //moving back
                  Navigator.pop(context, true);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
