void xialMeiSchedule() async {
  String lastTask = await Future.microtask(() {
    return "小美吃中餐";
  });

  if(lastTask == "小美吃中餐") {
    print(lastTask);
    lastTask = "小美訂高鐵票";
  }

  if(lastTask == "小美訂高鐵票") {
    print(lastTask);
    lastTask = "小美搭車去高鐵";
  }

  print(lastTask);
}

void main() {
  print("小美與小菜準備對行程");

  xialMeiSchedule();
  
  Future.microtask(() {
    print("小菜練習 flutter");
  });

  print("小菜與小美對完行程,小美生氣了");
}