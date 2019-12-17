import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import '../Constant/constant.dart';

class BottomBar extends StatefulWidget {
  BottomBar(
      {this.Home, this.Favorite, this.Natification, this.profile, this.Searce});

  final Function Home;
  final Function Favorite;
  final Function Natification;
  final Function profile;
  final Function Searce;

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  double paddingg = 5.0;
  Color icon_color = Color(0xFF8F8D8D);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          colors: <Color>[Colors.white, Colors.white10],
        ),
        borderRadius: BorderRadius.circular(11),
        boxShadow: [
          BoxShadow(color: Colors.yellow, offset: Offset(15.0, 15.0))
        ],
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: widget.Home,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.home,
                      color: icon_color,
                    ),
                    Text(
                      "Home",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: widget.Favorite,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.heart,
                      color: icon_color,
                    ),
                    Text(
                      "Favorite",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: widget.Natification,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.bell,
                      color: icon_color,
                    ),
                    Text(
                      "Notification",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),
            /*  Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: widget.profile,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.user,
                      color: icon_color,
                    ),
                    Text(
                      "Profile",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),*/

            ///=====================///
            /* Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: widget.Searce,
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: paddingg, vertical: 15.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      FeatherIcons.search,
                      color: icon_color,
                    ),
                    Text(
                      "Search",
                      style: ButtonBarTextStyle,
                    )
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
