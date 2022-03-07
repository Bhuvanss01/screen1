// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final email = TextEditingController();
  final pass = TextEditingController();
  final Conpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.black,backgroundColor: Colors.white,elevation: 0,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Login to your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        autofocus: true,
                        controller: email,
                        decoration: InputDecoration(hintText: "Email"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: pass,
                        autofocus: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: Conpass,
                        autofocus: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          elevation: 4,
                          onPressed: () {},
                          child: Text("Sign in"),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Or Sign in with"),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("Icons/google.png"),
                            Image.asset("Icons/fb.png"),
                            Image.asset("Icons/twitter.png"),
                          ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

