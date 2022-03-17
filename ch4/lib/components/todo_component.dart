import 'package:flutter/material.dart';
import 'package:ch4/models/todo.dart';

class TodoComponent extends StatefulWidget {
  
  Todo todo;
  
  TodoComponent(this.todo);

  @override
  State createState() {
    return _TodoComponentState();
  }
}

class _TodoComponentState extends State<TodoComponent> {

  @override
  Widget build(BuildContext context) {

    Widget checkTaskCompleteBox = Container(
      child: Checkbox(
        value: this.widget.todo.isComplete,
        onChanged: (userCheck) {
          setState(() {
            this.widget.todo.isComplete = userCheck!;
          });
        },
      ),
    );

    Widget taskText = Container(
      child: Text(
        this.widget.todo.content,

        style: (this.widget.todo.isComplete == true) ? TextStyle(decoration: TextDecoration.lineThrough):TextStyle(), // 相當於 if-else ? 當結果為 true 返回 TextStyle(decoration) , 反之則返回 TextStyle
      ),
    );


    return Container(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          checkTaskCompleteBox,
          taskText
        ],
      ),
    );
  }
}