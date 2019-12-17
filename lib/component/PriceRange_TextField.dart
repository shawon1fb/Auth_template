import 'package:flutter/material.dart';

class PriceRangeTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5),),
        color: Color(0xFFFFFFFF),
      ),

      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,


          labelStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
