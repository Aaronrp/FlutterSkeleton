import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/view_model_state.dart';
import 'package:flutter_skeleton/core/widget/button.dart';
import 'package:flutter_skeleton/core/widget/input_text.dart';
import 'package:flutter_skeleton/screen/login/login_model.dart';
import 'package:provider/src/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewPhone extends StatelessWidget {
  LoginViewPhone({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LoginModel model = context.watch<LoginModel>();

    return Scaffold(
      backgroundColor: const Color(0xFF232c33),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100.w,
              height: 100.w,
              child: const Placeholder(),
            ),
            SizedBox(
              width: 200.w,
              height: 35.h,
              child: InputText(
                controller: _usernameController,
                hintText: "Username",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 200.w,
              height: 35.h,
              child: InputText(
                controller: _passwordController,
                hintText: "Password",
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            if (model.state == ViewModelState.Idle)
              Button(
                text: "Login",
                onPressed: () {
                  model.login(
                      _usernameController.text, _passwordController.text);
                },
              ),
            if (model.state == ViewModelState.Busy)
              SizedBox(
                width: 50.w,
                height: 50.w,
                child: CircularProgressIndicator(
                  color: Colors.indigo.shade900,
                ),
              )
          ],
        ),
      ),
    );
  }
}
