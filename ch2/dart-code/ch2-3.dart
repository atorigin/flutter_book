void main() {
  // 如果人數超過 50 就嫁，否則就去吃吃到飽
  int peopleAmount = 51;
  if(peopleAmount > 50) {
    print("嫁給你");
  } else {
    print("去吃吃到飽");
  }

 /*
 * 結婚基金的故事
 * 愛情需要一點麵包，
 * 如果存超過一萬元的話，就去公證結婚
 * 如果剛好一萬元的話，雖然有點勉強，但也還可以
 * 若小於一萬元，只能婉拒了。
 */
  int budget = 30000;
  if(budget > 10000){
    print("我們現在去公證結婚");
  } else if(budget == 10000){
    print("雖然有點勉強,但還可以");
  } else {
    print("我爸媽說你還年輕,可以再多衝刺幾年事業");
  }
 
 /*
 * 我心裡只有小菜，
 * 如果不是小菜的話，我終身不嫁
 * 如果是小菜的話，我就要嫁出去了。
 */

  String yourName = "小菜";
  if(yourName != "小菜"){
    print("我終身不嫁");
  } else {
    print("我要嫁了");
  }

  String text = "cxcxc";
  if(text != "cxcxc"){
    print("快去找老師簽大話 AWS 架構書");
  } else {
    print("快去買大話 AWS 架構書和大話 Flutter");
  }
  
  int salary = 50000;
  if((salary/2) - 10000 - 5000 > 30000){
    print("有錢一族");
  } else {
    print("我還是繼續寫程式好了");
  }

  // 現在有一家公司，股本為 100 萬、公司營收為 500 萬、員工平均薪資為 4 萬元、員工人數 5 人、公司運營雜支基礎值為 200 萬、勞健保以每人 10000 計算、營所稅 20%。請依照下面的條件，
  // 設計一個存股判斷機

  // 營收為主要變數 公司營收的百分之五，必須課徵 5%的營業稅。 
  // 每多一位員工，公司運營雜支必須增加一萬二。
  // 營收扣除員工總薪資及運營雜支後，必須課徵 20%的營業稅。

  // 公司盈餘除以公司股本為公司每股盈餘。 若公司每股盈餘大於 5 元，則印出 好投資標的。 
  // 若公司每股盈餘介於 2 元到 5 元之間，則印出 可投資標的。 
  // 若公司每股盈餘 2 元以下，則印出 建議看其他家
  double revenue = 5000000;
  double pureRevenu = (revenue - revenue*0.05 - 2000000 - 40000*5 - 10000*5 - 12000*5);
  print(pureRevenu);
  if((pureRevenu - pureRevenu * 0.2) / 1000000 > 5){
    print("好投資標的");
  } else if((pureRevenu - pureRevenu * 0.2) / 1000000 > 2 && (pureRevenu - pureRevenu * 0.2) / 1000000 < 5){
    print("可投資標的");
  } else {
    print("建議看其它家");
  }
}