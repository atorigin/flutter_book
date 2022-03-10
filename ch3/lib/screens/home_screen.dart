import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    // 錯誤版本的 , ch3-4-2 拿掉 Expanded
    // return Scaffold(
    //   body: Column(
    //     children: [
    //       Container(
    //         width: 500,
    //         height: 500,
    //         color: Colors.blue,
    //         child: Text(
    //           "大頭照預留區",
    //           style: TextStyle(fontSize: 30),
    //         ),
    //       ),
    //       Container(
    //         width: 200,
    //         height: 200,
    //         color: Colors.red,
    //         child: Text(
    //           "簡介",
    //           style: TextStyle(fontSize: 30),
    //         ),
    //       ),
    //       Container(
    //         color: Colors.amber,
    //         child: Text(
    //           "座右銘",
    //           style: TextStyle(fontSize: 30),
    //         )
    //       )
    //     ]
    //   ),
    // );
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 500,
              height: 500,
              color: Colors.blue,
              child: Text(
                "大頭照預留區",
                style: TextStyle(fontSize: 30),
              ),
            )
          ),
          Expanded(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Text(
                "簡介",
                style: TextStyle(fontSize: 30),
              ),
            )
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Text(
                "座右銘",
                style: TextStyle(fontSize: 30),
              ),
            )
          ),
        ],
      )
      );
  }
}