import 'package:algoriza_task_1/core/util/widgets/my_button.dart';
import 'package:algoriza_task_1/features/presentation/login/login.dart';
import 'package:algoriza_task_1/features/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MyButton(
        text: 'Login',
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Login()),
                  (route) => false);
        },
        radius: 10,
        width: double.infinity,
        background: kPrimaryColor,
        height: 50,
      ),
    );
  }
}
