import 'package:flutter/material.dart';
import 'screen/selector_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromRGBO(10, 10, 20, 1),
        scaffoldBackgroundColor:  Color.fromRGBO(10, 13, 34, 1),
        buttonColor: Color.fromRGBO(17, 20,40, 1),
        errorColor: Color.fromRGBO(235, 21, 85, 1),
        accentColor: Color.fromRGBO(235, 21, 85, 1),
      ),
      home: SelectorPage(),
    );
  }
}

