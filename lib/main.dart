import 'package:flutter/material.dart';
import 'auth_page.dart';
import 'signup.dart';
import 'app.dart';
import 'home.dart';
import 'login.dart';

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
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => App(),
        '/login': (BuildContext context) => Login(),
        '/signup': (BuildContext context) => Signup(),
        '/home': (BuildContext context) => Home(),
        '/auth':(BuildContext context)=>Auth(),
      },
    );
  }
}
