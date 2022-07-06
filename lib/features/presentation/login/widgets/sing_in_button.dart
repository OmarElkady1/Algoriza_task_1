import 'package:algoriza_task_1/core/util/widgets/my_button.dart';
import 'package:flutter/material.dart';

class SigInButton extends StatelessWidget {
  const SigInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MyButton(
        text: 'Sing In',
        onTap: () {},
        radius: 10.0,
        width: double.infinity,
        height: 50,
        background: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
