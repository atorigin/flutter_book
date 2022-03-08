int returnIntWithoutParameter() {
  int result = 1 + 20;
  return result;
}

double returnDoubleWithParameter(int inputInt) {
  double result = inputInt * 100 / 20;
  return result;
}

String returnStringWithParameter(String inputStr) {
  String result = inputStr + "是一個字串";
  return result;
}

void withoutReturnValueJustExecute() {
  print("沒有回傳資料的函數,用 void 宣告此方法的回傳值型別");
}

void main() {
  print("=====沒有參數的函數,取值=====");
  int getIntValueFromFunction = returnIntWithoutParameter();
  print(getIntValueFromFunction);
  print("=====在函數動態輸入數字,取值=====");
  double getDoubleFromFunctionParameter1 = returnDoubleWithParameter(5);
  double getDoubleFromFunctionParameter2 = returnDoubleWithParameter(2);
  print(getDoubleFromFunctionParameter1);
  print(getDoubleFromFunctionParameter2);
  print("=====在函數動態輸入文字,取值=====");
  String getStringFromFunctionParameter1 = returnStringWithParameter("雲育鏈");
  String getStringFromFunctionParameter2 = returnStringWithParameter("大話 AWS");
  print(getStringFromFunctionParameter1);
  print(getStringFromFunctionParameter2);
  print("=====不需接收回傳值,調度函數=====");
  withoutReturnValueJustExecute();
}