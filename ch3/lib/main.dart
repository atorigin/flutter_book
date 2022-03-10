import 'package:ch3/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppEntryPoint extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

void main() {
  runApp(AppEntryPoint());
}