import 'package:ch3/components/common_drawer.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: TextButton(
        child: Text("彈回主頁"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}