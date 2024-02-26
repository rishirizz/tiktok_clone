import 'package:flutter/material.dart';
import 'package:tiktok_clone/login/view/login_screen.dart';
import 'package:tiktok_clone/signup/view/signup_screen.dart';

class AppPageRouter {
  getPageRoute(RouteSettings settings) {
    var routes = <String, WidgetBuilder>{
      LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
      SignUpScreen.routeName: (BuildContext context) => const SignUpScreen(),
    };
    return routes[settings.name];
  }
}
