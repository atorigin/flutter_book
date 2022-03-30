import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:section4/models/post.dart';

class PostTable extends StatelessWidget {
  // 在這裡會返回一個 DataTable 的 component, 
  // 目的在於最後利用一個表格作呈現, 而 DataTable 這個 component 則提供這種 layout
  
  // 設定建構子 , 若未來有人調用 , 必須要先提供一個放 Post 物件的 List => List<Post>
  List<Post> posts;
  PostTable(this.posts);

  @override
  Widget build(BuildContext context){

    // 將 column 的鍵名取出放入 List<String> 的 columnName 變數
    List<String> columnName = (jsonDecode(posts[0].toJsonObjectString()) as Map<String, dynamic>).keys.toList();
    // 將 columnName 的元素一一取出 , 轉換成 DataColumn
    List<DataColumn> dataColumns = columnName.map((key) => DataColumn(label: Text(key))).toList();
    
    // 製作一個 List<DataRow> 的陣列 , 用以最後建構 DataTable 的 component 時代入
    List<DataRow> dataRows = posts.map((post) {
      Map<String, dynamic> postJson = jsonDecode(post.toJsonObjectString()) as Map<String,dynamic>;

      List<DataCell> dataCells = columnName.map((key) {
        return DataCell(
          Text(postJson[key].toString())
        );
      }).toList();

      return DataRow(cells: dataCells);
    }).toList();

    // 返回建構的 DataTable component
    return DataTable(columns: dataColumns, rows: dataRows);
  }
}