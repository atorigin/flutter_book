void main(){
  // String List
  List<String> menList = ["王小明","李小菜","雲育鏈"];

  // 用元素取用
  print(menList[0]);
  print(menList[2]);

  // for loop 數字序列號版本
  print("for loop 數字序列遍歷版");
  for(int index=0; index < menList.length; index ++){
    print(menList[index]);
  }

  // for loop 元素遍歷
  print("for loop 元素遍歷版");
  for(String men in menList){
    print(men + "送早餐給小美");
  }

  // 印 ** 金字塔
  for(int i=1; i <= 4; i++){
    print("*" * i);
  }

  // 印 9*9 的九九乘法表
  print("===== 99乘法表 =====");
  for(int i=1; i <= 9; i++){
    for(int x=1; x <= 9; x++){
      print( i.toString() + " * " + x.toString() + " = " + (i * x).toString());
    }
  }
}