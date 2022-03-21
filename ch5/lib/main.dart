import 'package:flutter/material.dart';
import 'package:ch5/screens/future_builder_demo_screen.dart';

void main() {
  runApp(AppEntrypoint());
}

class AppEntrypoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/remote-data": (context) => FutureBuilderDemoScreen()
    },
    initialRoute: "/remote-data",
    );
  }
}