void main() {
  // Map 語法定義 - Map<鍵型別,值型別> 變數名
  Map<String,String> positionMap = {
    "generalManager": "bing-hong",
    "humanResource": "xiao-tsai",
    "accounting": "xiao-mei"
  };

  // 取出 Map 裡面鍵為 generalManager 的值
  print(positionMap["generalManage"]);

  // 為 positionMap 新增一筆鍵值對
  positionMap["partTime"] = "xiao-black";
  print(positionMap["partTime"]);
  
  // 有時候 key 非常多 , 透過 keys 取出 Map 所有的 key 並打印出來
  for(String key in positionMap.keys){
    print("positionMap 的 $key 時 , 它的值為 ${positionMap[key]}");
  }

  // 有需要增加多組鍵值對的場景時 , 可以用 addAll 
  positionMap.addAll({"worker": "somebody","worker2": "somebody2"});
  print(positionMap);

  // 有一個家庭，爸爸是李小鴻，媽媽是秉鴻李，兒子是李小秉，請將 father、mother、son 作為 Map 的 key，並將內容填入
  Map<String,String> familyMember = {
    "father": "李小鴻",
    "mother": "秉鴻李",
    "son": "李小秉"
  };
  
  // 接續上一題，家庭後來有了女兒 daughter，女兒叫作 李小花，請為先前建置的 Map，追加一個新的鍵值。
  print(familyMember);
  familyMember["daughter"] = "李小花";
  print(familyMember);
  
  // 第二種方法
  familyMember.remove("daughter"); // 先移除剛剛增加的
  familyMember.addAll({"daughter": "李小花"});
  print(familyMember);
}