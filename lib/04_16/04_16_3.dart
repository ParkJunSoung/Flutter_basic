import 'dart:io';
void main() {
  List<String> inputs = [];
  for(int i=0; i<inputs.length; i++){
    inputs.add(stdin.readLineSync());
  }

  Exam exam = Exam();
  print(exam.solution(inputs));
}

class Exam {
  String solution(List<String> lists) {
    String result = '';

    for (int i = 0; i < lists.length; i++) {
      if (i < lists.length - 1) {
        result += lists[i] + ', ';
      } else {
        result += lists[i] + '.';
      }
    }

    return result;
  }
}
