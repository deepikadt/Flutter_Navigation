import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils/router.dart';
import 'package:flutter_navigation/utils/strings_constants.dart';


void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter navigation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orangeAccent,
      ),
      initialRoute: AppStringConst.app,
      onGenerateRoute: Router.generateRoute,
      
    );
  }
}
