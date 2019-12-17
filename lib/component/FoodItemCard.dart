import 'package:flutter/material.dart';
import '../Constant/constant.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodItemCard extends StatefulWidget {
  FoodItemCard({
    this.imagePath,
    this.Title,
    this.Subtitle,
    this.RatingPoint,
    this.Rating,
    this.isopen,
  });

  final imagePath;
  final Title;
  final Subtitle;
  final RatingPoint;
  final Rating;
  final isopen;

  @override
  _FoodItemCardState createState() => _FoodItemCardState();
}

class _FoodItemCardState extends State<FoodItemCard> {
  IconData HeartIcon = FontAwesomeIcons.heart;
  bool b = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: FlatButton(
              onPressed: () {
                print("FoodItemCard");
              },
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 90, //MediaQuery.of(context).size.height*0.12,
                        width: 90, // MediaQuery.of(context).size.height*0.12,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              '${widget.imagePath}',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '${widget.Title}',
                                  style: KFoodItemCardTitle,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                '${widget.Subtitle}',
                                style: KFoodItemCardSubtitle,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.start,
                              textDirection: TextDirection.ltr,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Color(0xffFBBC04),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${widget.RatingPoint}',
                                    style: KFooditemCardRatingPoint,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${widget.Rating}',
                                    style: KFoodItemCardRating,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 100,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(
                            //FeatherIcons.heart,
                            b
                                ? FeatherIcons.heart
                                : FontAwesomeIcons.solidHeart,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              b = !b;
                            });
                          }),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '${widget.isopen}',
                        style: TextStyle(
                          fontFamily: 'Poppins SemiBold',
                          fontStyle: FontStyle.normal,
                          color: Colors.green,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
