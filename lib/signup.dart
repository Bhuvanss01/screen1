import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen1/validator.dart';

import 'Signupval.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final email = TextEditingController();
  final pass = TextEditingController();
  final Conpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final validation = Provider.of<SignupValid>(context);

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      fontSize: 40,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Login to your Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {
                          validation.email1(value);
                        },
                        autofocus: true,
                        controller: email,
                        decoration: InputDecoration(
                          hintText: "Email",
                          errorText: validation.email.error
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {
                          validation.password1(value);
                        },
                        controller: pass,
                        autofocus: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            hintText: "Password",
                            errorText: validation.password.error),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value) {
                          validation.conpassword1(value);
                        },
                        controller: Conpass,
                        autofocus: true,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            errorText: validation.conpass.error),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,

                        child: RaisedButton(
                          elevation: 4,
                          onPressed: () {},
                          child: const Text("Sign in"),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Or Sign in with"),
                      const SizedBox(
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
