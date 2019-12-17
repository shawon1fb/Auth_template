import 'package:flutter/material.dart';
import '../Constant/constant.dart';

class RedButton extends StatelessWidget {
  RedButton({@required this.text, this.onPress});

  final text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FlatButton(
        padding: EdgeInsets.all(15.0),
        color: Colors.red,
        disabledColor: Colors.red,
        onPressed: onPress,
        child: Align(
            alignment: Alignment.center,
            child: Text(
              '$text',
              style: KRedFlatButtonStyle,
            )),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
