import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_skeleton/core/color_service.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.busy = false})
      : super(key: key);

  final String text;
  final Function onPressed;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ElevatedButton(
        child: busy
            ? Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              )
            : CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                color: ColorService().text,
              ),
        onPressed: () {
          if (!busy) {
            onPressed();
          }
        },
        style: ElevatedButton.styleFrom(
          primary: ColorService().accent,
        ),
      ),
    );
  }
}
