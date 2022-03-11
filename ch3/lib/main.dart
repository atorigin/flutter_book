import 'package:ch3/screens/aws_saa-class.dart';
import 'package:ch3/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ch3/screens/book_screen.dart';

class AppEntryPoint extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => HomeScreen(),
        "/cloud-architecture-guide": (BuildContext context) => SecondScreen(),
        "/aws-saa-class": (BuildContext context) => AwsSaaClassScreen(),
      },
      initialRoute: "/",
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}