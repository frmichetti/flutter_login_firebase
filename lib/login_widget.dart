import 'package:flutter/material.dart';
import 'package:login_firebase/login/pages/login_page_widget.dart';
import 'package:login_firebase/login/pages/login_signin_page_widget.dart';
import 'package:login_firebase/login/pages/login_signup_page_widget.dart';

class LoginWidget extends StatelessWidget {
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
