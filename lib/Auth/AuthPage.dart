import 'package:flutter/material.dart';
import '../Constant/constant.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  var _controller = new PageController();
  var _controllerImage = new PageController();
  bool _login_flag = true;
  bool passwordVisible = false;
  Color _color = Colors.grey[300];
  Color _color2 = Colors.white;

  void ButtonSwitch(int flag) {
    if (flag == 0) {
      _color = Colors.grey[300];
      _color2 = Colors.white;
      ImagePrevious();
    } else {
      _color2 = Colors.grey[300];
      _color = Colors.white;

      ImageNext();
    }
  }

  void NextPgae() {
    _controller.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void ImageNext() {
    _controllerImage.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void ImagePrevious() {
    _controllerImage.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  void PreviousPage() {
    _controller.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 33.0, right: 33.0, top: 33.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child:
                  Container(), /* Center(
                child: Padding(
                  padding: ImagePadding,
                  child: PageView(
                    controller: _controllerImage,
                    onPageChanged: (index) {
                      setState(() {
                        _login_flag = index == 0 ? true : false;
                      });
                    },
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/login_auth.png'),

                        ///todo image dibi
                      ),
                      Image(
                        image: AssetImage(
                            'images/register_auth.png'), // todo image dibi
                      ),
                    ],
                  ),
                ),
              ),*/
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.red),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    color: _color,
                    onPressed: () {
                      setState(() {
                        _login_flag = true;

                        // _controller.jumpToPage(0);
                        if (_color == Colors.white) PreviousPage();
                        ButtonSwitch(0);
                      });
                    },
                    child: Text(
                      'Login',
                      style: KskipButton,
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    constraints:
                        BoxConstraints.expand(width: 1.0, height: 48.0),
                  ),
                  FlatButton(
                    color: _color2,
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    onPressed: () {
                      setState(() {
                        if (_color2 == Colors.white) NextPgae();
                        ButtonSwitch(1);
                      });
                    },
                    child: Text(
                      'Register',
                      style: KskipButton,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 3,
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    ButtonSwitch(index);
                  });
                },
                children: <Widget>[
                  LoginPage(),
                  SignUpPage(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
