import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:screen1/userinfo.dart';

import 'loginvalid.dart';




class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final email = TextEditingController();

  final password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    final validation1 = Provider.of<LoginValid>(context);
    return  Scaffold(
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
                        onChanged: (value){
                          validation1.email2(value);


                        },
                        autofocus: true,
                        controller: email,

                        decoration: InputDecoration(hintText: "Email",errorText: validation1.email.error),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        onChanged: (value){
                          validation1.password2(value);


                        },
                        obscureText: true,
                        controller: password,
                        autofocus: true,
                        decoration: InputDecoration(

                          hintText: "password",
                          errorText: validation1.password.error
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          elevation: 4,
                          onPressed: () {
                            Provider.of<Userinfo>(context, listen: false).Fetch(
                                email.text.toString(),
                                password.text.toString());
                            Navigator.pushNamed(context, "/home");
                          },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't Have Account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: const Text("sign up"))
                        ],
                      )
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

