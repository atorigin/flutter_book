import 'package:flutter/material.dart';
import 'package:section7/models/post.dart';
import 'package:section7/daos/post_dao.dart';
import 'package:section7/components/post_table_with_search_and_edit.dart';

class PostScreen extends StatefulWidget {
  @override
  State createState() {
    return _PostScreen();
  }
}

class _PostScreen extends State<PostScreen> {
  // 透過 PostDao 取用後端資料 , 會返回 future
  // 用 FutureBuilder 接 , 有 future 參數 , 等待資料完整回傳在做渲染

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: PostDao.getPosts(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Post>> asyncOfPosts) {
          return Scaffold(
            body: PostTableWithSearchEdit(asyncOfPosts.requireData),
          );
        });
  }
}
