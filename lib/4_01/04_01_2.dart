import 'dart:io';

void main() {
  Exam exam = Exam();
  String input = stdin.readLineSync();
  print(exam.solution(input));
}

class Exam {
  int result = 0;

  int solution(String a) {
    for (int i = 0; i < a.length; i++) {
      if (a[i] == 'A') {
        result += 1;
      }
    }
    return result;
  }
}
