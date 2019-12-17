import 'package:flutter/material.dart';

class Search_TextFeild extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30),),
        color: Color(0xFFEDEDED),
      ),
      
      child: TextField(
        decoration:  InputDecoration(
          border: InputBorder.none,
        prefixIcon: Icon(Icons.search),
          //icon: Icon(Icons.search),

          labelStyle: TextStyle(color: Colors.grey),
        /*  border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFEDEDED)),
              borderRadius: BorderRadius.circular(30.0),
              ),*/
        ),
      ),
    );
  }
}
