import 'package:flutter/material.dart';
import 'package:login_firebase/login/pages/login_page_widget.dart';
import 'package:login_firebase/login/pages/login_signin_page_widget.dart';
import 'package:login_firebase/login/pages/login_signup_page_widget.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;


  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: 1);
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/imgs/monte.jpg",
            fit: BoxFit.cover,
          ),
          PageView(
            controller: _controller,
            children: <Widget>[
              LoginSignupPageWidget(),
              LoginPageWidget(),
              LoginSignInPageWidget()
            ],
          )
        ],
      ),
    );
  }
}
