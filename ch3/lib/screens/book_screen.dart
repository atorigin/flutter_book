import 'package:ch3/components/common_drawer.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage("assets/cloud_architecture.jpeg"),
                ),
              ),
              Container(
                child: Text(
                  "大話 AWS 雲端架構",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:  Text("跳轉前頁"),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/aws-saa-class");
                  },
                  child: Text("未來技術趨勢"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}