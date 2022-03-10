import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Text(
              "大頭照預留區",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.red,
            child: Text(
              "簡介",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Text(
              "座右銘",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      )
      );
  }
}