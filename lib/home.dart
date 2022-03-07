import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen1/userinfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Userinfo>(builder: (context,Userinfo,_) {
      return MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Text(Userinfo.email),
            ],
          ),
        ),
      );
    },);
  }







}