void main(){
  print('hello');

  int num1 = 5000;
  double num2 = 360.1234;

  String num1Str = num1.toString();
  String num2Str = num2.toString();
  print('num1 to str is $num1Str');
  print('num2 to str is $num2Str');

  List<String> inputs = [
    '-1',
    '1234',
    '32.25'
  ];

  print(int.parse(inputs[0]));
  print(int.parse(inputs[1]));
  print(double.parse(inputs[2]));
  print(num.parse(inputs[2]));
}