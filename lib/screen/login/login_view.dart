import 'package:flutter/material.dart';
import 'package:flutter_skeleton/screen/login/login_model.dart';
import 'package:flutter_skeleton/screen/login/login_view_phone.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginModel>(
      create: (context) => LoginModel(),
      child: LoginViewPhone(),
    );
  }
}
