import 'dart:io';
void main() {
  Exam exam = Exam();
 List<String> inputLine = stdin.readLineSync().split(' ');
 print(exam.solution(inputLine));
}

class Exam {
  String solution(List<String> inputLine) {
    String result = '';


    return '${inputLine[0][0]}.${inputLine[1][0]}';



    return result;
  }
}