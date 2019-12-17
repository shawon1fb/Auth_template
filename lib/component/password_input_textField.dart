import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  PasswordTextField({this.hint, this.validator, this.OnSaved,this.focusNode,this.onFieldSubmitted});

  final hint;
  final FocusNode focusNode;
  final Function validator;
  final Function OnSaved;
  final Function onFieldSubmitted;

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState(hint: hint);
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  _PasswordTextFieldState({this.hint});

  final hint;
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted:widget.onFieldSubmitted,
      focusNode:widget.focusNode,
      autofocus: true,
      obscureText: passwordVisible,
      onSaved: widget.OnSaved,
      validator: widget.validator,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        labelText: '$hint',
        suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            }),
        labelStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
