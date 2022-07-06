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
            initialSelection: 'Eg',
            favorite: ['+20','Eg'],
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
          ),) );
  }
}
