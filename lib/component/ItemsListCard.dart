import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemsListCard extends StatefulWidget {
  ItemsListCard({this.SvgImagePath, this.ItemName, this.onPress});

  final SvgImagePath;
  final ItemName;
  final Function onPress;

  @override
  _ItemsListCardState createState() => _ItemsListCardState();
}

class _ItemsListCardState extends State<ItemsListCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(() {
            widget.onPress();
          });
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  height: 110,
                  width: 110,
                  child: SvgPicture.asset(
                    '${widget.SvgImagePath}',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '${widget.ItemName}',
                    style: TextStyle(
                      color: Color(0xFF898989),
                      fontFamily: 'Poppins Regular',
                      fontSize: 14.0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
