import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen1/home.dart';
import 'package:screen1/userinfo.dart';

import 'Splashscreen.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>Userinfo())
      ],
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => LoginScreen(),
          "/login": (context) => SplashScreen(),
          "/signup": (context) => SignupScreen(),
          "/home": (context)=> HomePage(),
        },
      ),
    );
  }
}
