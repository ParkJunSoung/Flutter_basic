//정수 m과 n이 주어졌을 때
//m을 n으로 나눈 몫과 나머지를 출력하라
//
//입력
//출력
//
//10 3
//3 1
//
//12 14
//0 12
import 'dart:io';
void main() {
  Exam exam = Exam();
  List<int> inputs = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  print(exam.solution(inputs[0], inputs[1]));
}

class Exam {
  String solution(int m, int n) {
    int a = m ~/ n;
    int b = m % n;
    String result = '$a $b';
    return result;
  }
}
