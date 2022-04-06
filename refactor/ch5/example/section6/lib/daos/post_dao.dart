import 'package:section6/models/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PostDao {
  // 插入, 從本地緩存挑選, 若無本地緩存, 則重新提取外部資料
  // 寫一個讀取資料的方法

  static Future<List<Post>> getPosts() async {
    // 建立一個專門跟 Cache 溝通的客戶端物件
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    //  設定  Cache 位置的 index
    String cacheKey = "posts";

    // 用客戶端物件 , 依照 index 向 Cache 取得資料
    List<String>? postDataStringInCache = await _prefs.getStringList(cacheKey);

    // 若有資料, 則將資料 , 從 String 陣列, 轉成 Post 陣列
    if (postDataStringInCache != null) {
      print("從 Cache 載入資料");
      List<Post> posts = postDataStringInCache
          .map((postJsonString) => Post.fromJson(jsonDecode(postJsonString)))
          .toList();
      return posts;
    } else {
      print("爬取資料");

      // 設定遠端位置(後端)
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      // 向遠端索取資料
      var response = await http.get(url);

      // 將資料結果轉換成 Post 陣列
      List<Post> posts =
          (jsonDecode(response.body) as List<dynamic>).map((jsonObject) {
        // print(jsonObject);
        return Post.fromJson(jsonObject);
      }).toList();

      // 將 Post 陣列轉換成 String 陣列, 存一份回緩存內
      List<String> postsStringList =
          posts.map((e) => e.toJsonObjectString()).toList();
      _prefs.setStringList(cacheKey, postsStringList);

      // 回傳 Post 陣列
      return posts;
    }
  }
}
