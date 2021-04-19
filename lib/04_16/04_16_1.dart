//두 정수를 입력받아 비교하여 더 큰 수를 출력하는 프로그램
//두 수가 같은 경우 eq를 출력
// 10 20
// 20
// 3 3
// eq
import 'dart:math';
import 'dart:io';

void main() {
  Exam exam = Exam();
  List<int> inputs = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  print(exam.solution(inputs[0],inputs[1]));
}

class Exam {
  String solution(int a, int b) {
    String result = max(a, b).toString();
    if (a == b) {
      result = 'eq';
    }
    return result;
  }
}


