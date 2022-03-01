import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/base_model.dart';
import 'package:flutter_skeleton/core/view_model_state.dart';

class LoginModel extends BaseModel {
  LoginModel._internal();
  static final LoginModel _instance = LoginModel._internal();
  factory LoginModel() {
    return _instance;
  }

  Color color = Colors.black;

  Future<void> login(String username, String password) async {
    setState(ViewModelState.Busy);
    await Future.delayed(const Duration(seconds: 3));
    setState(ViewModelState.Idle);
  }

  Color getColor() {
    return color;
  }

  void setColor(Color c) {
    color = c;
    notifyListeners();
  }
}
