import 'package:section5/models/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostDao {
  static Future<List<Post>> getPosts() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(url);

    List<Post> posts = (jsonDecode(response.body) as List<dynamic>)
        .map((jsonObject) => Post.fromJson(jsonObject))
        .toList();

    return posts;
  }
}
