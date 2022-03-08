import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushNamed(context, "/login"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 3, 57, 233),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Logo",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
          // RaisedButton(onPressed: (){Navigator.pushNamed(context, "/login");},child: Text("Login"),)
        ],
      ),
    );
  }
}
