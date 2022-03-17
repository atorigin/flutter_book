import 'package:flutter/material.dart';
import 'package:ch4/screens/count_todo_demo_screen.dart';
import 'package:ch4/screens/colorful_demo_screen.dart';
import 'package:ch4/screens/todo_input_demo_screen.dart';
import 'package:provider/provider.dart';
import 'daos/todo_dao.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoDao(),)
      ],
      child: AppEntryPoint(),
    )
  );
}

class AppEntryPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cxcxc_statefulwidget_demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/color-demo": (BuildContext context) => ColorfulDemoScreen(),
        "/task": (BuildContext context) => TodoInputDemoScreen(),
        "/amount": (BuildContext context) => CountTodoDemoScreen(),
      },
      initialRoute: "/task",
    );
  }
}