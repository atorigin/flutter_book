import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:section5/models/post.dart';

class PostTableWithSearch extends StatefulWidget {
  // 宣告擺放 Post 物件的陣列
  List<Post> posts;

  // 建構子
  PostTableWithSearch(this.posts);

  @override
  State createState() {
    // 補充 _ 為 private class 的意思 , 所以下面代表返回 _PostTableWithSearch 這個 Private class
    return _PostTableWithSearch();
  }
}

class _PostTableWithSearch extends State<PostTableWithSearch> {
  // 存放未來已篩選好的 List
  List<Post> filteredPosts = [];

  void changeFilteredPosts(String userInput) {
    // 使用 where 函數 , 針對資料進行篩選
    filteredPosts = this.widget.posts.where((element) {
      // 搜尋列輸入空時
      if (userInput == "") {
        return true;
        // 資料有包含搜尋列字串時
      } else if (element.title.contains(userInput)) {
        print(element.title);
        return true;
        // 不為空 , 也無包含搜尋列字串時
      } else {
        return false;
      }
    }).toList();

    // 若查詢後 filteredPosts 的長度為 0 , 代表查無資料, 添加一筆假資料, 告知查無資料
    if (filteredPosts.length == 0) {
      filteredPosts.add(Post(999, 999, "查無資料", "查無資料"));
    }
  }

  @override
  Widget build(BuildContext context) {
    // 若已過濾的 Post 陣列為零, 代表尚未過濾
    if (filteredPosts.length == 0) {
      changeFilteredPosts("");
    }

    // 建立一個新的文字控制器
    var searchTextEditingController = TextEditingController();

    // 建立文字輸入框
    Widget searchBar = TextField(
      controller: searchTextEditingController,
      decoration: const InputDecoration(
          border: OutlineInputBorder(), hintText: "Enter a search term"),
      // 當用戶輸入搜尋內容後 , 調度下面函數 , 進行資料搜尋
      onSubmitted: (inputStr) {
        setState(() {
          changeFilteredPosts(inputStr);
        });
      },
    );

    // 將該字串陣列轉成  DataColumn
    List<String> columnName = (jsonDecode(filteredPosts[0].toJsonObjectString())
            as Map<String, dynamic>)
        .keys
        .toList();
    List<DataColumn> dataColumns = columnName.map((key) {
      return DataColumn(label: Text(key));
    }).toList();

    // 用已過濾的 Post 陣列，逐筆轉成 DataRow
    List<DataRow> dataRows = filteredPosts.map((post) {
      // 轉換單筆 Post , 變成 Map 資料結構
      Map<String, dynamic> postJson =
          jsonDecode(post.toJsonObjectString()) as Map<String, dynamic>;
      // 依照我們要查詢用的欄位, 提取 post 的資料內容, 並轉化成 DataCell
      List<DataCell> dataCells = columnName.map((key) {
        return DataCell(Text(postJson[key].toString()));
      }).toList();
      // 將 DataCell 整併成一條 DataRow
      return DataRow(cells: dataCells);
    }).toList();

    // 擔心超過畫面 height , 使用 SingleChildScrollView 萬一超過頁面, 可以用滾輪查看
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topCenter,
        // 先放入搜尋列置頂
        child: Column(children: [
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
        ]),
      ),
    );
  }
}
