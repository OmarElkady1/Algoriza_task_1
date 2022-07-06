import 'package:algoriza_task_1/core/util/widgets/my_form_field.dart';
import 'package:flutter/material.dart';

class PasswordTextForm extends StatelessWidget {
   PasswordTextForm({Key? key}) : super(key: key);
  var passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MYFormField(suffix: Icons.visibility_outlined,controller: passController, textInputType:TextInputType.visiblePassword ,
        label: 'Password',isPassword: true,),
    );
  }
}
