import 'package:section3/models/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostDao {
  static Future<List<Post>> getPosts() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    // 將取用的內容轉化成 List<dynamic> 透過 map 迴圈操作將 dynamic 逐一轉換成 Post 物件
    List<Post> posts =
        (jsonDecode(response.body) as List<dynamic>).map((jsonObject) {
      return Post.fromJson(jsonObject);
    }).toList();

    // 傳回這個存放所有 Post 物件的 list
    return posts;
  }
}
