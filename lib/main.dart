import 'package:flutter/material.dart';
import 'package:test_app/SplashScreen.dart';

import 'DetailsScreen.dart';
import 'SignInScreen.dart';
import 'SignUpScreen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(


       // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignUpPage(),
    );
  }
}


