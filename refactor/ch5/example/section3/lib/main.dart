import 'package:flutter/material.dart';
import 'package:section3/screens/post_screen.dart';

void main() {
  runApp(AppEntrypoint());
}

class AppEntrypoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/post-screen": (context) => PostScreen()
      },
      initialRoute: "/post-screen",
    );
  }
}