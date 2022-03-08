import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/validator.dart';

class LoginValid with ChangeNotifier {
  Validation _email = Validation("", "");
  Validation _password = Validation("", "");


  Validation get email => _email;

  Validation get password => _password;


  void email2(String value) {
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      Validation("", "Please Enter Correct Mail Format");
    }
    else
      Validation(value, "");


  }
  void password2(String value) {
    if (value.length >= 3) {
      _password = Validation(value, "");
    } else {
      _password = Validation("", "Password Must be Above 3 Characters");
    }
    notifyListeners();
  }


}