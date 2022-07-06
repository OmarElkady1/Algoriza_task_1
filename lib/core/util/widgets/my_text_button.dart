import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {

  VoidCallback onPressed;
  String text;
  Color? textColor;
   MyTextButton({Key? key,required this.onPressed,required this.text,this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  TextButton(onPressed: (){
      onPressed();
    }, child:  Text(text,style:  TextStyle(color: textColor),))
    ;
  }
}
