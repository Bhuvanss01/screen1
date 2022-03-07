import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Userinfo with ChangeNotifier
{
  String email="";
  String password="";



   Fetch(String emailid , String pwd){
     email = emailid;
     password = pwd;
     notifyListeners();

  }
}