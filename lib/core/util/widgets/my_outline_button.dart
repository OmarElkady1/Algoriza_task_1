import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  Color backgroundColor;
  double radius;
  VoidCallback onPressed;
  String text;
  Color textBackground;

  MyOutlineButton(
      {Key? key,
      required this.backgroundColor,
      required this.radius,
      required this.onPressed,
      required this.text,
      required this.textBackground})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: TextStyle(
            color: textBackground,
          ),
        ));
  }
}
