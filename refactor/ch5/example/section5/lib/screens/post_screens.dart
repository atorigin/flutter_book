import 'dart:html';

import 'package:flutter/material.dart';
import 'package:section5/components/post_table_with_search.dart';
import 'package:section5/models/post.dart';
import 'package:section5/daos/post_dao.dart';

class PostScreen extends StatefulWidget {
  @override
  State createState() {
    return _PostScreen();
  }
}

class _PostScreen extends State<PostScreen> {
  // 透過 PostDao 取用遠端資料 , 此資料會返回 Future, 故使用 FutureBuilder , 當資料取回時, 可以進行畫面重渲染
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // 讀取遠端資料
      future: PostDao.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> asyncOfPosts) {
        return Scaffold(
          body: PostTableWithSearch(asyncOfPosts.requireData),
        );
      },
    );
  }
}
