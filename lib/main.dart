import 'package:calculator_ibm/constants.dart';
import 'package:calculator_ibm/screens/input_page.dart';
import 'package:calculator_ibm/screens/results_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFdce1eb),
        scaffoldBackgroundColor: Color(0xFFdce1eb),
        accentColor: kPrincipalColor,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
