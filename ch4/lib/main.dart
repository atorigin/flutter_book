import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ch4/screens/colorful_demo_screen.dart';

void main() {
  runApp(AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'statefulwidget demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/color-demo": (BuildContext context) => ColorfulDemoScreen()
      },
      initialRoute: "/color-demo",
    );
  }
}