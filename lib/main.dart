import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login_widget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFFFFF65E5C)
      ),
      home: LoginWidget(),
    );
  }
}
