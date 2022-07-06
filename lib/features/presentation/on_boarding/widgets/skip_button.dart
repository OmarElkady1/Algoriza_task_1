import 'package:algoriza_task_1/core/util/widgets/my_outline_button.dart';
import 'package:algoriza_task_1/features/presentation/login/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: MyOutlineButton(
          backgroundColor: HexColor('#FFFDF6F0'),
          radius: 20,
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                    (route) => false);
          },
          text: 'Skip',
          textBackground: Colors.black,
        ));
  }
}
