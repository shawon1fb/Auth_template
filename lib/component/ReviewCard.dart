import 'package:flutter/material.dart';
import '../Constant/constant.dart';

class ReviewCard extends StatefulWidget {
  ReviewCard({this.UserName,this.UserStatus,this.Comment});

  final UserName;
  final UserStatus;
  final Comment;

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://www2.pictures.stylebistro.com/gi/Alexandra+Daddario+Long+Hairstyles+Long+Side+45R51T2DH5Pl.jpg',
                  ),
                  maxRadius: 25.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        '${widget.UserName}',
                        style: KUserName,
                      ),
                      Text(
                        '${widget.UserStatus}',
                        style: KUserSatus,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(icon: Icon(Icons.more_vert), onPressed: null),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: StarColor,
                ),
                Icon(
                  Icons.star,
                  color: StarColor,
                ),
                Icon(
                  Icons.star,
                  color: StarColor,
                ),
                Icon(
                  Icons.star,
                  color: StarColor,
                ),
                Icon(
                  Icons.star_border,
                  color: StarColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1 week ago',
                  style: KUserSatus.copyWith(
                    color: Color(0xFFA9A9A9),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              '${widget.Comment}',
              style: KreviewBody,
            ),
          ),

          SizedBox(
            height: 5,
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
                IconButton(icon: Icon(Icons.share), onPressed: null),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
