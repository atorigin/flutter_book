import "dart:convert";
void main(){
  // 解析字串的 json array , 使用 jsonDecode
  String stringOfJsonArray = """[1,2,3,4,5,6]""";
  List<dynamic> jsonArray = jsonDecode(stringOfJsonArray);

  // 依序打印 jsonArray 的元素
  for(int element in jsonArray){
    print(element);
  }

  // 添加資料進 jsonArray
  jsonArray.add(7);

  // 將加資料後的 jsonArray 轉譯回 string
  String jsonArrayToString = jsonEncode(jsonArray);
  print("轉譯回 string 的 json array" + jsonArrayToString);

  // 嘗試解析一個複雜的 json 字串 , 取出裡面 arrayInJsonObject 的資料
  String validNestedJsonObjectString = """{
                                      "jsonString": "hello", 
                                      "jsonNumber": 123, 
                                      "jsonArray": [1, 2, 3, 4,5, 6], 
                                      "jsonObject": {
                                            "stringInJsonObject": "abc",
                                            "numberInJsonObject": 456,
                                            "arrayInJsonObject": [7, 8, 9,1, 2, 3],
                                            "objectInJsonObject": {
                                              "lastStringField": "cxcxc"
                                              }
                                            }
                                        }""";

  Map<String,dynamic> decodedJsonMap = jsonDecode(validNestedJsonObjectString);
  print(decodedJsonMap["jsonObject"]["arrayInJsonObject"]);
}