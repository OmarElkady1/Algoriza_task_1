import 'package:flutter/material.dart';

class MYFormField extends StatelessWidget {
  MYFormField({Key? key, required this.controller, required this.textInputType
      ,this.onTap,this.onChange,this.onSubmit,this.validate,required this.label,
    this.isClickable,this.isPassword,
    this.suffixPressed,this.suffix,this.prefix

  })
      : super(key: key);
  TextEditingController controller;
  TextInputType textInputType;
  GestureTapCallback? onTap;
  ValueChanged<String>? onChange;
  ValueChanged<String>? onSubmit;
  FormFieldValidator<String>? validate;
  String label;
  bool? isClickable = true;
  bool? isPassword = false;
   IconData? prefix;
  IconData? suffix;
  VoidCallback? suffixPressed;


  @override
  Widget build(BuildContext context) {
    return TextFormField(

        controller: controller,
        keyboardType: textInputType,
        obscureText: isPassword!,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        validator: validate,
        decoration: InputDecoration(
        labelText: label,
       suffix: Icon(suffix),
        prefix: Icon(prefix),



    border: OutlineInputBorder(),
        ),
    );
  }
}
