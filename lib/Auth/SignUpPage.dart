import 'package:flutter/material.dart';
import '../Constant/constant.dart';
import '../component/BlueButton.dart';
import '../component/RedButton.dart';
import '../component/Normal_TextField.dart';
import '../component/password_input_textField.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 15.0,
          children: <Widget>[
            new NormalTextField(
              inputType: TextInputType.text,
              hint: 'Name',
            ),
            new NormalTextField(
              inputType: TextInputType.emailAddress,
              hint: 'E-mail address',
            ),
            new NormalTextField(
              inputType: TextInputType.phone,
              hint: 'Mobile No',
            ),
            new PasswordTextField(
              hint: 'Password',
            ),
            new PasswordTextField(
              hint: 'Confirm Password',
            ),
            RedButton(text: 'Sign Up'),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
