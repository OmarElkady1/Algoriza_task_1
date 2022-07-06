import 'package:algoriza_task_1/core/util/widgets/my_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneTextForm extends StatelessWidget {
   PhoneTextForm({Key? key}) : super(key: key);
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          ),) );
  }
}
