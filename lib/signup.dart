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
                              SocialIcon(Image.asset("Icons/google.png")),
                              SocialIcon(Image.asset("Icons/google.png")),
                              SocialIcon(Image.asset("Icons/google.png")),
                            ]),
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
