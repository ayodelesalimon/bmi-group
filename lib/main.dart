import 'package:bmi_app/my_theme_data.dart';
import 'package:bmi_app/result_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myThemeData,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
