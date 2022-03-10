class User {
  int id;
  String name;
  String username;
  String email;

  User(this.id, this.name, this.username, this.email);
  
  void printUserInfo() {
    print("用戶叫做 $name , 用戶的帳號為 $username , 用戶的 id 是 $id , 用戶的信箱為 $email");
  }
}

void main() {
  User demoUser = User(1, "李秉鴻", "lbh", "service@cxcxc.io");

  print(demoUser.id);
  print(demoUser.name);
  print(demoUser.username);
  print(demoUser.email);
  demoUser.printUserInfo();

  User demoUser2 = User(2, "小菜", "xiao-tsai", "xiao-tsai@cxcxc.io");

  print(demoUser2.id);
  print(demoUser2.name);
  print(demoUser2.username);
  print(demoUser2.email);
  demoUser2.printUserInfo();
}