import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        width: 500,
        height: 500,
        margin: EdgeInsets.all(20),
        color: Colors.blue,
        child: Container(
          alignment: Alignment.bottomRight,
          width: 200,
          height: 200,
          margin: EdgeInsets.all(20),
          color: Colors.red,
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(20),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}