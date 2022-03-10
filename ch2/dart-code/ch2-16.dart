abstract class Drinking {
  String origin;
  String branding;
  int price;

  Drinking(this.origin, this.branding, this.price);

  void mustKnow() {
    print("若產品有瑕疵 , 可連絡消基會");
  }

  void drinkingInstruction();
}

class Coffee extends Drinking{
  Coffee(String origin, String branding, int price): super(origin, branding, price);

  @override
  void drinkingInstruction() {
    print("建議半夜十二點之後 , 不要喝咖啡 , 避免無法入睡");
  }
}

class Tea extends Drinking {
  Tea(String origin, String branding, int price): super(origin, branding, price);

  @override
  void drinkingInstruction() {
    print("可熱沖或冷泡");
  }

  @override
  void mustKnow() {
    print("喝好茶,可行神延年益壽");
  }
}

void main() {
  Drinking cxcxcCoffee = Coffee("中壢", "雲育鏈", 20);
  print(cxcxcCoffee.branding);
  cxcxcCoffee.drinkingInstruction();
  cxcxcCoffee.mustKnow();

  Drinking wulongTea = Tea("南投", "回甘", 700);
  print(wulongTea.branding);
  wulongTea.drinkingInstruction();
  wulongTea.mustKnow();
}