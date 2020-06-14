import 'dart:math';

void main() {
  List<int> numbers = [100,200,300,400,250];

  int maxValue = max(numbers[0], numbers[1]);
  int minValue = min(numbers[2], numbers[3]);
  print('max(100,200) is $maxValue');
  print('min(300,400) is $minValue');

  double squareRooted = sqrt(numbers[4]);
  print('sqrt(250) is $squareRooted');

  List<int> randomNumbers = _makeRandomNumbers(10, 8);
  print('random number(0..9) is $randomNumbers');

  double doubleValue = 500.51;
  int rounded = doubleValue.round();
  print('500.51 rounds $rounded');

}

List<int> _makeRandomNumbers(int max, int counts) {
  Random rand = Random();
  List<int> res = List();
  for (int i = 0; i < counts; ++i) {
    res.add(rand.nextInt(max));
  }

  return res;
}