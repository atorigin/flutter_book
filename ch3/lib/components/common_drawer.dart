import 'package:flutter/material.dart';

class CommonDrawer {
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('主頁'),
            onTap: () {
              Navigator.pushNamed(context, "/");              
            },
          ),
          ListTile(
            title: const Text("第二個分頁"),
            onTap: () {
              Navigator.pushNamed(context, "/second");
            },
          )
        ],
      ),
    );
  }
}