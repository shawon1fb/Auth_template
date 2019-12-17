import 'package:flutter/material.dart';
import '../Constant/constant.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BlueButton extends StatelessWidget {
  BlueButton({@required this.text,this.onPress});

  final text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: FlatButton(
        padding: EdgeInsets.all(15.0),
        color: Color(0xff255785),
        disabledColor: Color(0xff255785),
        onPressed: onPress,
        child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.facebookSquare,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '$text',
                  style: KRedFlatButtonStyle,
                ),
              ],
            )),
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Color(0xff255785),
            )),
      ),
    );
  }
}
