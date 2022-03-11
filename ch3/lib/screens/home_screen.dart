import 'package:ch3/components/common_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton (
        child: Text("切換到第二頁"),
        onPressed: () {
          Navigator.pushNamed(context, "/second");
        },
        ),
    );
  }
}