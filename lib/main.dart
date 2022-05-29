import 'package:flutter/material.dart';

import 'package:ispfinder/constants.dart';
import 'package:ispfinder/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        splashColor: Colors.lightGreen,
      ),
      home: const MyHomePage(title: Constants.APP_NAME),
    );
  }
}
