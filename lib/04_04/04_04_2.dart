import 'dart:io';

void main() {
  //입력
  List<String> inputs = stdin.readLineSync().split(' ');
  //출력
  int m = int.parse(inputs[0]);
  int n = int.parse(inputs[1]);
  String result = '';
  for (int i = 0; i < 10; i++) {
    int ec = m + n * i;
    result += '$ec ';
  }
  print(result);
}
