import 'package:flutter/material.dart';

class SignWithGoogle extends StatelessWidget {
  const SignWithGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue)
            ,borderRadius: BorderRadius.circular(10.0)
        ),
        child: MaterialButton(
          color: Colors.white,
          elevation: 0,
          onPressed: () {  },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30.0,
                width: 30.0,


                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/google1.png'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text("Sign with By Google",style: TextStyle(color: Colors.blue),)
            ],
          ),
        ),
      ),
    );
  }
}
