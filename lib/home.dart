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

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () => Future.value(false),
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
                child: Text("Logout"),
                onPressed: () {
                  //moving back
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          ),
        ),
      ),
    );


    //   return WillPopScope(
    //   onWillPop: () => Future.value(false),
    //   child: Scaffold(
    //     appBar: AppBar(
    //       leading: Container(),
    //       title: Text("Home"),
    //       centerTitle: true,
    //     ),
    //     body: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           SizedBox(
    //             height: 100,
    //           ),
    //           Center(child: Text("Data came from previous screen:")),
    //           Center(
    //             child: Text(
    //               user.firstname + " " + user.lastname,
    //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    //             ),
    //           ),
    //           SizedBox(
    //             height: 100,
    //           ),
    //           FlatButton(
    //             child: Text("Logout"),
    //             onPressed: () {
    //               //moving back
    //               Navigator.of(context).pop(true);
    //             },
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
