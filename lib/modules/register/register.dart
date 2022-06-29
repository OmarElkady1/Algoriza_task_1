import 'package:algoriza_task_1/shared/my_button.dart';
import 'package:algoriza_task_1/shared/my_form_field.dart';
import 'package:algoriza_task_1/shared/my_text_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class Register extends StatelessWidget {
   Register({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var passController = TextEditingController();
  var emailController = TextEditingController();
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
                  Image.asset('assets/images/screen1.PNG',width: double.infinity,height: 200,fit: BoxFit.cover,),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MYFormField(controller: emailController, textInputType:TextInputType.emailAddress , label: 'Email',isPassword: false,),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MYFormField(controller: phoneController, textInputType:TextInputType.phone , label: 'Phone Number',
                        isPassword: false,prefix:CountryCodePicker(
                          onChanged: print,
                          // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                          initialSelection: 'Eg',
                          favorite: ['+20','Eg'],
                          // optional. Shows only country name and flag
                          showCountryOnly: false,
                          // optional. Shows only country name and flag when popup is closed.
                          showOnlyCountryWhenClosed: false,
                          // optional. aligns the flag and the Text left
                          alignLeft: false,
                        ),) ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MYFormField(suffix: Icons.visibility_outlined,controller: passController, textInputType:TextInputType.visiblePassword ,
                      label: 'Password',isPassword: true,),
                  ),
                  const SizedBox(
                    height: 15,
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyButton(text: 'Register', onTap: (){}, radius: 10.0, width: double.infinity, height: 50,background: Colors.blue,textColor: Colors.white,),
                  ),
                  const SizedBox(height: 10,),
                  const Center(child: Text('Or')),
                  const SizedBox(height: 10,),
                  Padding(
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
                  ),

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
                    child: Text('By registering your account your are agree to our ',style: TextStyle(fontSize: 15,color: Colors.grey),),
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
