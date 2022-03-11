import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: TextButton (
        child: Text("切換到第二頁"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
        ),
    );
  }
}