import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:section3/daos/post_dao.dart';
import 'package:section3/models/post.dart';

class PostText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(

      // 請 PostDao 使用調度外部系統資料的 Future 函數
      future: PostDao.getPosts(),

      builder: (BuildContext context, AsyncSnapshot<List<Post>> asyncSnapshot) {
        
        // 一個空陣列
        List<Widget> widgets = [];
        // 確認與遠端系統交互的連線狀態
        print(asyncSnapshot.connectionState);

        // 確認是否已取得資料
        print(asyncSnapshot.hasData);

        // 如果連線狀態為已完成, 取用數據 , 轉成 Text
        if(asyncSnapshot.connectionState == ConnectionState.done) {
          widgets = asyncSnapshot.requireData.map((post) {
            return Text(post.toJsonObjectString());
          }).toList();
        }

        // 避免資料量大 , 讓頁面可以透過滾動方式查看超過頁面的資料
        return SingleChildScrollView(
          child: Column(
            children: widgets,
          ),
        );
      },
    );
  }
}