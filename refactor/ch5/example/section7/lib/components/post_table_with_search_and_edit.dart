import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:section7/models/post.dart';
import 'package:http/http.dart' as http;

class PostTableWithSearchEdit extends StatefulWidget {
  List<Post> posts;

  PostTableWithSearchEdit(this.posts);

  @override
  State createState() {
    return _PostTableWithSearchEdit();
  }
}

class _PostTableWithSearchEdit extends State<PostTableWithSearchEdit> {
  List<Post> filteredPosts = [];

  void changeFilteredPosts(String userInput) {
    filteredPosts = this.widget.posts.where((element) {
      // 用 where 函數篩選資料
      if (userInput == "") {
        return true;
      } else if (element.title.contains(userInput)) {
        print(element.title);
        return true;
      } else {
        return false;
      }
    }).toList();

    // 若查詢後, filteredPosts 長度為 0 , 代表查無資料 , 添加一筆假資料, 呈現查無資料
    if (filteredPosts.length == 0) {
      filteredPosts.add(Post(999, 999, "查無資料", "查無資料"));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (filteredPosts.isEmpty) {
      changeFilteredPosts("");
    }

    var searchTextEditingController = TextEditingController();
    // Searchbar 搜尋列
    Widget searchBar = TextField(
      controller: searchTextEditingController,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "Enter a search term"),
      onSubmitted: (inputStr) {
        setState(() {
          changeFilteredPosts(inputStr);
        });
      },
    );

    // 下面開始處理 DataTable 的元素 , 包含有 DataColumn , DataRow

    // 取出第一筆數據 , 轉成 json , 將欄位提取出來轉成陣列, 陣列裡放置 key 的字串
    List<String> columnName = (jsonDecode(filteredPosts[0].toJsonObjectString())
            as Map<String, dynamic>) // as Map ;會先轉成 Map 的資料結構
        .keys // 取 key 的字串
        .toList(); // 轉成陣列

    // 將資料逐步轉成 dataColumn
    List<DataColumn> dataColumns = columnName.map((key) {
      // 利用 map 遞迴 columnName 陣列 , 將裡面的值取出轉成 DataColumn
      return DataColumn(label: Text(key));
    }).toList(); // 最後將整個結果轉成 List

    // 讀取 posts 陣列
    // 將每個 post 的變數跟內容轉成 DataCell
    // 整併成 DataRow
    // 最後都放到一個 List<DataRow> 陣列

    List<DataRow> dataRows = filteredPosts.map((post) {
      // 遞迴讀取 posts 陣列
      Map<String, dynamic> postJson =
          jsonDecode(post.toJsonObjectString()) as Map<String, dynamic>;

      // 依據我們要呈現的欄位, 把 post 符合該欄位的內容提取出來, 轉成 DataCell 然後整合成 List
      List<DataCell> dataCells = columnName.map((key) {
        return DataCell(
            // 由於要開放用戶編輯, 把前面的 Text 改成 TextField
            // 仍有顯示資料的需求 , 透過 TextEditingController 的 text 參數進行顯示
            // onSubmitted 函數, 用 http 模組的 post 函數 , 把修改後的內容傳給後端系統
            TextField(
          controller: TextEditingController(text: postJson[key].toString()),
          onSubmitted: (inputStr) {
            postJson[key] = inputStr;
            print(postJson);
            // 設定後端位置
            var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
            // 傳給後端
            var responseOfFuture = http.post(url, body: jsonEncode(postJson));
            // 印出後端回傳的結果
            responseOfFuture.then((value) => print(value.body));
          },
        ));
      }).toList(); // 因為是 List<DataCell> 所以要轉成 List 返回
      return DataRow(cells: dataCells);
    }).toList(); // 因為是 List<DataRow> 所以要轉成 List 返回

    // 採用 SingleChildScrollView 避免畫面高度不足 , 此 Widget 可以讓使用者操作滾輪查看頁面
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              width: 800,
              child: searchBar,
            ),
            Container(
              width: 800,
              child: DataTable(
                columns: dataColumns,
                rows: dataRows,
              ),
            )
          ],
        ),
      ),
    );
  }
}
