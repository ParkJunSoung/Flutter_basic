import 'dart:io';

void main() {
  //EXAM 생성
  Exam exam = Exam();
  //문자열 입력받기
  String input = stdin.readLineSync();
  //입력받은값을 솔루션 함수에 적용하여 출력
  print(exam.solution(input));
}

class Exam {
  //결과값 설정
  int result = 0;
  //메소드
  int solution(String a) {
    // 입력받은 문자열만큼  A 가있는지 비교후 A 가있으면 결과값에 +1
    for (int i = 0; i < a.length; i++) {
      if (a[i] == 'A') {
        result += 1;
      }
    }
    return result;
  }
}
