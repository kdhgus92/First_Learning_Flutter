void main() {
  //1. 주석
  /**
   * 여러줄 주석
   */

  ///
  /// 이거도 여러줄주석
  ///
  int num1 = 100;
  double num2 = 3.14;
  num num3 = 100;
  num num4 = 3.14;

  double sum1 = num1+num2;
//  int sum2 = num1+num2;
  print(sum1);

  num sum3 = num3*num4;
  print(sum3);

  String text = 'Carpe diem, quam minimum credula postero';
  String myName = 'ohhyeun';
  String hello = 'Hello, ${myName}';
  print(text.substring(0,10));
  print(hello);

}