import 'package:flutter/material.dart';
import 'package:section7/screens/post_screen.dart';

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
