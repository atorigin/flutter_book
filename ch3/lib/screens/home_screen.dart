import 'package:ch3/components/common_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: SingleChildScrollView (
        child:  Container (
          alignment: Alignment.center,
          child: Column (
            children: [
              Container (
                child: Text (
                  "雲育鏈 Line@ QRCode",
                  style: TextStyle(fontSize: 28),
                )
              ),
              Container (
                child: Image(image: AssetImage("assets/cxcxc_line.png")),
              ),
              Container (
                child: Text("掃了不會有好康"),
              ),
              Container (
                child: TextButton(
                  onPressed: () {
                  Navigator.pushNamed(context, "/cloud-architecture-guide");
                  },
                child: Text("單身神功秘笈"),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                  Navigator.pushNamed(context, "/aws-saa-class");
                  },
                  child: Text('未來技術趨勢'),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}