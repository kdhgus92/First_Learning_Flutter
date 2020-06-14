import 'dart:io';

void main(){
//  stdout.write('Enter name? ');
//  String input = stdin.readLineSync();
//  print('Hello, $input');

  File newFile = File('temp_file.txt');
  newFile.createSync();

  File poem = File('poem.txt');
  List<String> lines = poem.readAsLinesSync();
  for(String line in lines) {
    print(line);
  }

  File memoFile = File('diary.txt');
  String contents = """
    2020.06.01: 플러터 공부 시작
    
    오늘은 플러터의 표준 라이브러리를 공부했다.
    안드로이드 스튜디오를 활용하여 예제를 실행했다.
    """;
  memoFile.writeAsStringSync(contents);
}