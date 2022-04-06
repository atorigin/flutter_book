import 'package:flutter/material.dart';
import 'package:section5/screens/post_screens.dart';

void main() {
  runApp(AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/post-screen": (context) => PostScreen(),
      },
      initialRoute: "/post-screen",
    );
  }
}
