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
void main() {
  Exam exam = Exam();
  print(exam.solution(-10));
  print(exam.solution(5));
}
class Exam {
  int solution(int n) {
    int result = 0;
    if(n < 0 ){
      // -10 * -10 = 10
       result = n * -1;
    }else if(n == n) {
       result = n;
    }return result;
    }
}

