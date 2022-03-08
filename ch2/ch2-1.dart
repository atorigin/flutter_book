void main() {
  String name = "小菜";
  String companyName = "雲育鏈";
  int age = 24;
  
  // 打印
  print(name);
  print(name + "在" + companyName);
  print(age.toString());
  
  // 組合打印
  print("有一個年紀為" + age.toString() + "歲的男孩子在" + companyName + ".他的名子叫做" + name);
}