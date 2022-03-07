// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
          //RaisedButton(onPressed: (){Navigator.pushNamed(context, "/login");},child: Text("Login"),)
        ],
      ),
      
    );
  }
}
