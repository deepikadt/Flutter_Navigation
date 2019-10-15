import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/auth_page.dart';
import 'package:flutter_navigation/login.dart';
import 'package:flutter_navigation/model/user.dart';
import 'package:flutter_navigation/signup.dart';
import 'package:flutter_navigation/utils/strings_constants.dart';

import '../app.dart';
import '../home.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppStringConst.app:
        return MaterialPageRoute(builder: (_) => App());
      case AppStringConst.auth:
        return MaterialPageRoute(builder: (_) => Auth());
      case AppStringConst.login:
        return PageRouteBuilder(
          opaque: true,
          transitionDuration: const Duration(milliseconds: 1000),
          pageBuilder: (BuildContext context, _, __) {
            return Login();
          },
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return 
            FadeTransition(
              opacity: animation,
              child: 
              RotationTransition(
                turns: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              ),
            );
          });
      case AppStringConst.signup:
        return MaterialPageRoute(builder: (_) => Signup());
      case AppStringConst.home:
       User data=settings.arguments as User;
        return MaterialPageRoute(builder: (_) => Home(user:data));
      default:
      //when any unknown route comes
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
