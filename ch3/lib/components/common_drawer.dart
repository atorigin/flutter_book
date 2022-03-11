import 'package:flutter/material.dart';

class CommonDrawer {
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      child: ListView (
        children: [
          ListTile (
            title: const Text('公司官網'),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile (
            title: const Text("大話 AWS 雲端搶先看"),
            onTap: () {
              Navigator.pushNamed(context, "/cloud-architecture-guide");
            },
          ),
          ListTile (
            title: const Text("未來必備的雲端架構師認證"),
            onTap: () {
              Navigator.pushNamed(context, "/aws-saa-class");
            },
          )
        ],
      ),
    );
  }
}