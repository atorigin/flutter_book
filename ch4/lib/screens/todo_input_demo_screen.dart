import 'package:ch4/components/common_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ch4/daos/todo_dao.dart';
import 'package:ch4/components/todo_component.dart';

class TodoInputDemoScreen extends StatefulWidget {
  
  List<String> todoList = [];
  
  @override
  State createState() {
    return _TodoInputDemoScreen();
  }
}

class _TodoInputDemoScreen extends State<TodoInputDemoScreen> {
  
  @override
  Widget build(BuildContext context) {

    var textEditController = TextEditingController();

    Widget userInputTextField = Container(
      width: 500,
      child: TextField (
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: '輸入要執行的任務'
        ),
        controller: textEditController,
        onSubmitted: (inputValue){
          setState(() {
            context.read<TodoDao>().insertTodo(inputValue);
            textEditController.clear();
          });
        },
      )
    );
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            userInputTextField,
            ...context.watch<TodoDao>().getTodos().map((taskTodo) => Container(child: TodoComponent(taskTodo))).toList()
          ],
        ),
      ),
    );
  }
}