import 'package:algoriza_task_1/core/util/widgets/my_button.dart';
import 'package:algoriza_task_1/core/util/widgets/my_form_field.dart';
import 'package:algoriza_task_1/core/util/widgets/my_text_button.dart';
import 'package:algoriza_task_1/features/presentation/login/widgets/phone_text_form.dart';
import 'package:algoriza_task_1/features/presentation/login/widgets/sign_with%20_google.dart';
import 'package:algoriza_task_1/features/presentation/register/widgets/email_text_form.dart';
import 'package:algoriza_task_1/features/presentation/register/widgets/password_text_form.dart';
import 'package:algoriza_task_1/features/presentation/register/widgets/register_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/screen.jpg',width: double.infinity,height: 200,fit: BoxFit.cover,),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Welcome to Fashion Day ',
                      style:
                      Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Register',
                          style:
                          Theme.of(context).textTheme.headline4!.copyWith(
                            color:Colors.black,
                          ),
                        ),
                        const Spacer(),
                        MyTextButton(onPressed: (){}, text: 'Help'),
                        const Icon(Icons.help_outlined,color: Colors.blue,),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                   EmailTextForm(),

                  const SizedBox(
                    height: 30,
                  ),
                  PhoneTextForm(),
                  const SizedBox(
                    height: 30,
                  ),
                PasswordTextForm() ,
                  const SizedBox(
                    height: 15,
                  ),


                  const RegisterButton(),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Center(child: Text('Or')),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const SignWithGoogle(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        const Text(
                          'Has any account?',
                        ),
                        MyTextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        }, text: 'Sing in here'),
                        const Spacer()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('By registering your account your are agree to our ',style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,),
                  ),
                  Center(child: TextButton(onPressed: (){}, child: const Text('Terms and condition',style: TextStyle(fontSize: 10),))),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
