/*
아래와 같이 수열을 출력하는 프로그램을 짜시오
5 8 11 14 17 20 23 26 29 32
첫 숫자가 5이고 3씩 증가하는 것을 알 수 있다.
이것을 일반적으로 첫번째 숫자가 5이고 공차가 3인 등차수열이라고 부른다.
첫번째 숫자 m, 공차 n 이 주어졌을 때 10번째 숫자까지를 공백을 구분자로 출력하시오
입력
출력
3 3
3 6 9 12 15 18 21 24 27 30
5 10

5 15 25 35 45 55 65 75 85 95
1 3

1 4 7 10 13 16 19 22 25 28*/
import 'dart:io';
void main() {
  Exam exam = Exam();
  List<int> inputs = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  print(exam.solution(inputs[0], inputs[1]));
}

class Exam {
  String solution(int m, int n) {
    String result = '';
    for (int i = 0; i < 10; i++){
      int ex = m + n * i;
      result += '$ex ';
    }
      return result ;
  }
}

// class Exam {
//   int solution(int m, int n) {
//     int result = 0;
//     for (int i = 0; i <= 10; i++){
//       result =  a * i;
//     }
//     return result ;
//   }
// }