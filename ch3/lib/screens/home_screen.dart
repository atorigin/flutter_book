import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        width: 500,
        height: 500,
        color: Colors.blue,
        child: Text(
          "個人首頁粗稿",
          style: TextStyle(fontSize: 30),
          )
        )
      );
  }
}