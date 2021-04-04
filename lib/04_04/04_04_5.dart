import 'dart:io';

void main() {
  //입력 받기 5개 문자
  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(int.parse(stdin.readLineSync()));
  }
  //입력받은 문자에서 앞에꺼에서 뒤에꺼를 뺌
  for (int i = 0; i < 4; i++) {
    print(inputs[i + 1] - inputs[i]);
  }
}

