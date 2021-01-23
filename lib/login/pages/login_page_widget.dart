import 'package:flutter/material.dart';
import 'package:login_firebase/login/widgets/circle_button.dart';

class LoginPageWidget extends StatefulWidget {
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      color: Theme.of(context).accentColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60,
          ),
          Icon(Icons.headset_mic, size: 40, color: Colors.white),
          Container(
            height: 25,
          ),
          RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  children: <TextSpan>[
                TextSpan(text: "Awesome"),
                TextSpan(
                    text: "App", style: TextStyle(fontWeight: FontWeight.bold))
              ])),
          Container(
            height: 120,
          ),
          CircleButton(
            label: "SIGN UP",
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
            onTap: () {
              print("ON TAP");
            },
          ),
          Container(
            height: 30,
          ),
          CircleButton(
            label: "LOGIN",
            backgroundColor: Colors.white,
            textColor: Theme.of(context).accentColor,
              onTap: () {
                print("ON TAP");
              }
          ),
        ],
      ),
    );
  }
}
