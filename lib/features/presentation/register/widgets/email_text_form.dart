import 'package:algoriza_task_1/core/util/widgets/my_form_field.dart';
import 'package:flutter/material.dart';

class EmailTextForm extends StatelessWidget {
   EmailTextForm({Key? key}) : super(key: key);
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MYFormField(controller: emailController, textInputType:TextInputType.emailAddress , label: 'Email',isPassword: false,),
    );
  }
}
