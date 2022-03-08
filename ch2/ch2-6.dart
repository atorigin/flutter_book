import "dart:convert";

void main(){
  
  // 內容包含多種型別的 Map , 以 dynamic 宣告 , 可以動態的操作在 Map 裡各式不同型別的資料
  Map<String,dynamic> dynamicMap = {
    "name": "xiao-mei",
    "age": 18
  };

  print(dynamicMap["name"].runtimeType);
  print(dynamicMap["age"].runtimeType);

  // 以 convert 套件來解析/轉譯字串的 json 格式資料
  String jsonObjectString = """{"name": "小明","age":28}""";
  Map<String,dynamic> fromJsonObjectStrToDartMap = jsonDecode(jsonObjectString);
  print(fromJsonObjectStrToDartMap["name"]);
  print(fromJsonObjectStrToDartMap["name"].runtimeType);
  print(fromJsonObjectStrToDartMap["age"]);
  print(fromJsonObjectStrToDartMap["age"].runtimeType);
  
  // 追加資料 , 轉回 string
  fromJsonObjectStrToDartMap["sex"] = "male";
  String fromDartMapToJsonObjectString = jsonEncode(fromJsonObjectStrToDartMap);
  print(fromDartMapToJsonObjectString);
  print(fromDartMapToJsonObjectString.runtimeType);

  // 宣告一個 Map , 有兩個 key , 一為 questionId 值為整數 , 二為 questionContent 值為字串
  Map<String,dynamic> question = {
    "questionId": 1,
    "questionContent": "第一個問題la"
  };

  // 將先前建置的 Map 轉換成 json object 格式的字串
  String dartMapToJsonObjectStr = jsonEncode(question);
  print(dartMapToJsonObjectStr);
  print("dartMapToJsonObjectStr 的型別是: " + dartMapToJsonObjectStr.runtimeType.toString());

  // 有一個 {"itemId": 303031 ,"itemName": "白米飯", "itemPrice": 300 } , 嘗試轉換成 Map 並提取 itemId 欄位的值
  String item = """{"itemId": 303031 ,"itemName": "白米飯", "itemPrice": 300}""";
  Map<String,dynamic> itemStrToDartMap = jsonDecode(item);
  print(itemStrToDartMap["itemId"]);
}