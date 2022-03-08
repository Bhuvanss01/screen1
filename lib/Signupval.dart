import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen1/validator.dart';

class SignupValid with ChangeNotifier {
  Validation _email = Validation("", "");
  Validation _password = Validation("", "");
  Validation _conpassword = Validation("", "");


  Validation get email => _email;

  Validation get password => _password;

  Validation get conpass => _conpassword;


  void email1(String value) {
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {

      _email = Validation("", "Please Enter Correct Mail Format");
    }
    else {
      _email = Validation(value, "");


    }



  }
  void password1(String value) {
    if (value.length >= 3) {
      _password = Validation(value, "");
    } else {
      _password = Validation("", "Password Must be Above 3 Characters");
    }
    notifyListeners();
  }
  void conpassword1(String value) {
    if (value!=_password.value) {

      _conpassword = Validation("", "Mismatch");

    }
    else {

       _conpassword = Validation(value, "");
    }
  }
}
