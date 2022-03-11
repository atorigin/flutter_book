import 'package:ch3/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ch3/screens/second_screen.dart';

class AppEntryPoint extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "/second": (BuildContext context) => SecondScreen(),
      },
      initialRoute: "/",
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}