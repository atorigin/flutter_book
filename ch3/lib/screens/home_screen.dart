import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: Container(
          margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            margin: EdgeInsets.all(20),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}