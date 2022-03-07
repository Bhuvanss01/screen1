// ignore_for_file: prefer_const_constructors, deprecated_member_use


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:screen1/userinfo.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
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
                  child: Container(
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
                          controller: email,
                          decoration: InputDecoration(hintText: "Email"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          obscureText: true,
                          controller: password,
                          autofocus: true,
                          decoration: InputDecoration(

                            hintText: "password",
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
                            onPressed: () {
                              Provider.of<Userinfo>(context,listen: false).Fetch(email.text.toString(), password.text.toString());
                              Navigator.pushNamed(context, "/home");

                            },
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
                              SocialIcon(Image.asset("Icons/google.png")),
                              SocialIcon(Image.asset("Icons/google.png")),
                              SocialIcon(Image.asset("Icons/google.png")),
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont't Have Account?"),
                            TextButton(onPressed: () {}, child: Text("sign up"))
                          ],
                        )
                      ],
                    ),
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

class SocialIcon extends StatelessWidget {
  final Image src;

  SocialIcon(@required this.src);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.blue,
        ),
      ),
      child: src,
      height: 30,
      width: 30,
    );
  }
}
