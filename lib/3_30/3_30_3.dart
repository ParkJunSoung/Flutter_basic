// A 가 몇개인지??
//
// PAIZA
// 2
//
// aAaAaAa
// 3
void main() {
  Exam exam = Exam();
  print(exam.solution('PAIZA'));
  print(exam.solution('aAaAaAa'));
}
class Exam {
  int solution(String s) {
    //int로 결과 값 출력 이니까 0 ;
    int result = 0;
    // 0부터 비교를 하는데 이 0은 스트링 갯수만큼 증가
    for (int i = 0; i < s.length; i++) {
      //인덱스 비교하면서 A가 있는지 확인후 숫자 1증가 
      if (s.substring(i, i + 1) == 'A') {
        result++;
      }
    }
    return result;
  }
}