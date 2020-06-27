void main(){
  int num = 99;
  num+=1;
  print('num=$num');

  const double PIE = 3.14;
  if(PIE >= 3) {
    print('PIE는 3 이상이다.');
  }

  const String PASSWORD = '1234';
  String _input = '12345';
  if(_input == PASSWORD) {
    print('로그인 성공');
  } else {
    print('비밀 번호를 다시 입력하세요');
  }

  String _nextInput = '12345';
  String _loginResult = PASSWORD == _nextInput ? '로그인 성공':'비밀번호를 다시 '
      '입력하세요';

  print(_loginResult);
}