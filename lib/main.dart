import 'package:flutter/material.dart';
import 'package:login_ui_1/constants.dart';
import 'package:login_ui_1/screens/Welcome/welcome_screen.dart';
import 'package:login_ui_1/screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: LoginScreen(),
      home: WelcomeScreen(),
    );
  }
}
