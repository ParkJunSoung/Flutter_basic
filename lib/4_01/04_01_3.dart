import 'dart:io';

void main() {
  Exam exam = Exam();
  //String input = stdin.readLineSync();

  print(exam.solution(31));
}

class Exam {
  String solution(int a) {
    String result = 'rainy';
    if (a <= 30) {
      result = 'sunny';
    } else if (a >= 31 && a <= 71) {
      result = 'cloudy';
    }

    return result;
  }
}
