// -100 부터 100까지 중 정수 n이 주어졌을 때 절대값을 구하시오
//
// 입력
// 출력
//
// -10
// 10
//
// -1
// 1
//
// 15
// 15
import 'dart:io';
void main() {
  Exam exam = Exam();
  int a = int.parse(stdin.readLineSync());
  print(exam.solution(a));

}

class Exam {
  int solution(int n) {
    int result = n;
    if (n < 0) {
      result = n * -1;
    }
    return result;
  }
}
