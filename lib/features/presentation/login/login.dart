import 'package:algoriza_task_1/features/presentation/login/widgets/phone_text_form.dart';
import 'package:algoriza_task_1/features/presentation/login/widgets/sign_with%20_google.dart';
import 'package:algoriza_task_1/features/presentation/login/widgets/sing_in_button.dart';
import 'package:algoriza_task_1/features/presentation/register/register.dart';
import 'package:algoriza_task_1/core/util/widgets/my_button.dart';
import 'package:algoriza_task_1/core/util/widgets/my_form_field.dart';
import 'package:algoriza_task_1/core/util/widgets/my_text_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);
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
                          'Sign in ',
                          style:
                          Theme.of(context).textTheme.headline4!.copyWith(
                            color:Colors.black,
                          ),
                        ),
                        const Spacer(),
                        TextButton(onPressed: (){}, child: const Text('Help')),
                        const Icon(Icons.help_outlined,color: Colors.blue,),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PhoneTextForm(),

                  const SizedBox(
                    height: 15,
                  ),


                const SigInButton(),
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
                          'Don\'t have an account?',
                        ),
                        MyTextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));}, text: 'Register Now'),
                        const Spacer()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Use the application according '
                        'to policy rules. Any kinds of violations will be subject to sanctions',style: TextStyle(fontSize: 15,color: Colors.grey),textAlign: TextAlign.center,),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}










