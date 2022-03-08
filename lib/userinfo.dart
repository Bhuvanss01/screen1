import 'package:flutter/cupertino.dart';
import 'login.dart';

class Userinfo with ChangeNotifier {
  String email1 = "";
  String password1 = "";

  Fetch(String emailid, String pwd) {
    email1 = emailid;
    password1 = pwd;
    notifyListeners();
  }

}
