import 'package:flutter/material.dart';

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
            this.widget.todoList.add(inputValue);
            textEditController.clear();
          });
        },
      )
    );
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            userInputTextField,
            ...this.widget.todoList.map((taskString) => Text(taskString)).toList()
          ],
        ),
      ),
    );
  }
}