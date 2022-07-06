import 'package:flutter/material.dart';

class OnBoardingElement extends StatelessWidget {
  final String imagePath, title, subTitle;
  const OnBoardingElement(
      {Key? key,
        required this.imagePath,
        required this.title,
        required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.normal, fontSize: 10.0),
        ),
      ],
    );
  }
}
