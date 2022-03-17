import 'package:ch4/components/common_drawer.dart';
import 'package:flutter/material.dart';

class ColorfulDemoScreen extends StatefulWidget {
  bool currentColorisRed = true;

  @override
  State createState() {
    return _ColorfulDemoScreenState();
  }
}

class _ColorfulDemoScreenState extends State<ColorfulDemoScreen> {

  @override
  Widget build(BuildContext context) {
    print("進入 build 函數時 , widget 的 currentColorisRed");
    print(this.widget.currentColorisRed);
    Widget colorfulContainer;
    if(this.widget.currentColorisRed == true) {
      colorfulContainer = Container(
        color: Colors.red,
        width: 300,
        height: 300,
      );
    } else {
      colorfulContainer = Container(
        color: Colors.blue,
        width: 300,
        height: 300,
      );
    }
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              child: TextButton(
                child: Text("按我會變色"),
                onPressed: () {
                  setState(
                    () {
                      print("用戶點擊過程中, widget 的 currentColorisRed 屬性");
                      print(this.widget.currentColorisRed);
                      this.widget.currentColorisRed = !this.widget.currentColorisRed;
                      print("用戶點擊過程後, widget 的 currentColorisRed 屬性 , 重新賦值");
                      print(this.widget.currentColorisRed);
                    }
                  );
                },
              )
            ),
            colorfulContainer
          ],
        ),
      ),
    );
  }
}