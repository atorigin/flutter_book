void main() {
  print("小菜與小美準備對行程");
  Future.microtask(() {
    return "吃中餐";
  }).then((lastTaskEatLunch) {
    print(lastTaskEatLunch);
    return "訂高鐵票";
  }).then((lastTaskHighRoadway) {
    print(lastTaskHighRoadway);
    return "搭車去高鐵";
  }).then((lastTaskTakeTaxi) {
    print(lastTaskTakeTaxi);
  });

  Future.microtask(() {
    print("練習 flutter");
  });

  print("小菜與小美對完行程,小美生氣了");
}