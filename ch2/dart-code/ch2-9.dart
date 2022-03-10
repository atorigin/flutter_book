void main() {
  print("會議開始");
  Future.delayed(
    Duration(seconds: 1),
    () {print("小美收到下台中的任務，開始準備行囊。");}
  );

  Future.microtask(
    () {print("小菜練習 Flutter 應用");}
  );

  print("會議結束");
}