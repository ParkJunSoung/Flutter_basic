import 'dart:io';
void main() {
  Exam exam = Exam();
 //String inputLine = stdin.readLineSync();
 print(exam.s)
}

class Exam {
  String solution(String a, String b) {
    String result = '';

    result = '${a.substring(0, 0 + 1)}' + '${b.substring(0, 0 + 1)}';
    return result;




    return result;
  }
}