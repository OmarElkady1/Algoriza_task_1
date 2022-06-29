import 'package:algoriza_task_1/modules/login/login.dart';
import 'package:algoriza_task_1/modules/register/register.dart';
import 'package:algoriza_task_1/my_button.dart';
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
        body: 'We have young and professional delivery team that will bring your food as soon as possible to doorstep '
    ),
    BoardingModel(
        image: 'assets/images/on_boarding2.png',
        title: 'Buy Any food from your favorite restaurant',
        body: 'we are constantly adding your favourite restaurant throughout the territory and around your area carefully selected '),
    BoardingModel(
        image: 'assets/images/on_boarding3.png',
        title: 'Get food delivery to your doorstep',
        body: 'We have young and professional delivery team that will bring your food as soon as possible to doorstep '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black12),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>   Login()), (route) => false);
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/7krave.PNG',
              width: double.infinity,
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MyButton(
                text: 'Login',
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>   Login()), (route) => false);
                },
                radius: 10,
                width: double.infinity,
                background: HexColor('#FF51AFAB'),
                height: 50,
              ),
            ),
            Row(
              children: [
                Spacer(),
                const Text(
                  'Don\'t have an account?',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                          (route) => false);
                    },
                    child: Text(
                      'Sin Up',
                      style: TextStyle(color: HexColor('#FF51AFAB')),
                    )),
                const Spacer()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(model.image),

          Text(

            model.title,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,),
          ),

          Text(
            model.body,
            style: const TextStyle(overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.normal, fontSize: 10.0),
          ),
        ],
      );
}
