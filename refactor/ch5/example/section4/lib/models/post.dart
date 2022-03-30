import 'dart:convert';

class Post {
  // 定義資料基本屬性
  int userId;
  int id;
  String title;
  String body;

  // 建構子
  Post(this.userId, this.id, this.title, this.body);

  // 提供物件轉 Json 格式的 String 方法
  String toJsonObjectString(){
    return jsonEncode({
      "userId": this.userId,
      "id": this.id,
      "title": this.title,
      "body": this.body
    });
  }

  // 將符合 json 規格的 dynamic 建置成 Post 物件 , 方便之後與外部系統串接取得數據後 , 可以轉換成 Post 物件
  // @classmethod 不需要 init 實例可以直接調用方法 - factory
  factory Post.fromJson(dynamic jsonObject) {
    return Post(
      jsonObject["userId"],
      jsonObject["id"],
      jsonObject["title"],
      jsonObject["body"]
    );
  }
}