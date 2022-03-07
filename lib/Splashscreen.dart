// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), ()=>Navigator.pushNamed(context, "/login"),);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 3, 57, 233),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Logo",
              style:
                  TextStyle(color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
         // RaisedButton(onPressed: (){Navigator.pushNamed(context, "/login");},child: Text("Login"),)
        ],
      ),

    );
  }
}
