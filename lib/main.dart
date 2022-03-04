import 'package:flutter/material.dart';

import 'Splashscreen.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/login": (context) => SplashScreen(),
        "/signup": (context) => SignupScreen(),
      },
    );
  }
}
