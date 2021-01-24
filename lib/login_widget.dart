import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_firebase/login/pages/login_page_widget.dart';
import 'package:login_firebase/login/pages/login_signin_page_widget.dart';
import 'package:login_firebase/login/pages/login_signup_page_widget.dart';
import 'package:login_firebase/login/provider/provider_page_controller.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;
  FirebaseAuth _auth;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
    _auth = FirebaseAuth.instance;
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
          ProviderPageController(
              firebaseAuth: _auth,
              controller: _controller,
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  LoginSignupPageWidget(),
                  LoginPageWidget(),
                  LoginSignInPageWidget()
                ],
              ))
        ],
      ),
    );
  }
}
