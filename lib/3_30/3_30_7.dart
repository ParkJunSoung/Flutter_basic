//두 정수를 입력받아 비교하여 더 큰 수를 출력하는 프로그램
//두 수가 같은 경우 eq를 출력
// 10 20
// 20
// 3 3
// eq
import 'dart:math';

void main() {
  Exam exam = Exam();
  print(exam.solution(60, 90));
  print(exam.solution(20, 20));
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

//quiz4
// void main() {
//   Exam exam = Exam();
//   print(exam.solution(20, 20));
// }
//
// class Exam {
//   var result;
//   String solution(int a, int b){
//     if (a==b){result = 'eq';}
//     else{result = max(a,b).toString();
//   }
//     return result;
//   }
// }
