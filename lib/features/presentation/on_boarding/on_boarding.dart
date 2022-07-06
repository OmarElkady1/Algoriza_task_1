import 'package:algoriza_task_1/features/presentation/login/login.dart';
import 'package:algoriza_task_1/features/presentation/on_boarding/widgets/login_button.dart';
import 'package:algoriza_task_1/features/presentation/on_boarding/widgets/skip_button.dart';
import 'package:algoriza_task_1/features/presentation/register/register.dart';
import 'package:algoriza_task_1/core/util/widgets/my_button.dart';
import 'package:algoriza_task_1/core/util/widgets/my_outline_button.dart';
import 'package:algoriza_task_1/core/util/widgets/my_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  String image;
  String title;
  String body;

  BoardingModel({required this.image, required this.title, required this.body});
}

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardingController = PageController();
  bool isLast = false;

  List<BoardingModel> boardingList = [
    BoardingModel(
        image: 'assets/images/on_boarding1.png',
        title: 'Get food delivery to your doorstep',
        body:
            'We have young and professional delivery team that will bring your food as soon as possible to doorstep '),
    BoardingModel(
        image: 'assets/images/on_boarding2.png',
        title: 'Buy Any food from your favorite restaurant',
        body:
            'we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected '),
    BoardingModel(
        image: 'assets/images/on_boarding3.png',
        title: 'Get food delivery to your doorstep',
        body:
            'We have young and professional delivery team that will bring your food as soon as possible to doorstep '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          SkipButton(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/7.png',
                width: double.infinity,
                height: 35,
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boardingList[index]),
                  itemCount: boardingList.length,
                  controller: boardingController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (int v) {
                    if (v == boardingList.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SmoothPageIndicator(
                  controller: boardingController,
                  count: boardingList.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.amber,
                    dotWidth: 10,
                    dotHeight: 8,
                    spacing: 5,
                    expansionFactor: 4,
                  ),
                ),
              ),
              const LoginButton(),
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    'Don\'t have an account?',
                  ),
                  MyTextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                          (route) => false);
                    },
                    text: 'Sin Up',
                    textColor: HexColor('#FF51AFAB'),
                  ),
                  const Spacer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(model.image),
            Text(
              model.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Text(
              model.body,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.normal, fontSize: 10.0),
            ),
          ],
        ),
      );
}
