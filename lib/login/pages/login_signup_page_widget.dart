import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_firebase/login/provider/provider_page_controller.dart';
import 'package:login_firebase/login/widgets/circle_button.dart';
import 'package:login_firebase/login/widgets/custom_textfield.dart';

class LoginSignupPageWidget extends StatefulWidget {
  @override
  _LoginSignupPageWidgetState createState() => _LoginSignupPageWidgetState();
}

class _LoginSignupPageWidgetState extends State<LoginSignupPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic,
              size: 50, color: Theme.of(context).accentColor),
          Container(
            height: 50,
          ),
          CustomTextField(label: "EMAIL", hint: "frmichetti@gmail.com",),
          Container(height: 25),
          CustomTextField(label: "PASSWORD", hint: "***************",),
          Container(height: 25),
          CustomTextField(label: "CONFIRM PASSWORD", hint: "***************",),
          Container(
            height: 25,
          ),
          Container(
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                ProviderPageController.of(context).toPage(2);
              },
              child: Text(
                "Already have an account?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Container(
            height: 40,
          ),
          CircleButton(
            label: "SIGN UP",
          )
        ],
      ),
    );
  }
}
