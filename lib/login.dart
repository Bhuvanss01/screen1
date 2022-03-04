// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Logo',
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 90, 136),
                  decoration: TextDecoration.none),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text(
                    "Login to your Account",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
