import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen1/home.dart';
import 'package:screen1/loginvalid.dart';
import 'package:screen1/userinfo.dart';
import 'package:screen1/Signupval.dart';
import 'package:screen1/validator.dart';

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
        ChangeNotifierProvider(create: (_)=>Userinfo()),
        ChangeNotifierProvider(create: (_)=>SignupValid()),
        ChangeNotifierProvider(create: (_)=>LoginValid())

      ],
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "/login": (context) => LoginScreen(),
          "/signup": (context) => SignupScreen(),
          "/home": (context)=> HomePage(),
        },


      ),
    );
  }
}
