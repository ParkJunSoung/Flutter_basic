/*당신은 수를 열거하는 프로그램을 만들려고 한다. 그러려면 '자르기 좋은 숫자'를 발견해야 한다.
'자르기 좋은 숫자'란 다음 규칙을 따른다.

- 모든 숫자가 같아야 함

판별한 숫자 n 을 입력받아 조건에 맞으면 그 수를 그대로 출력하고
조건에 맞지 않으면 No를 출력하시오

// 4444
// 4444

// 3335
// No*/
void main() {
  Exam exam = Exam();
  print(exam.solution(4444));
  print(exam.solution(3353));
  // print(exam.solution(49000));
  // print(exam.solution(00000));
}
class Exam {
  String solution(int n) {
    String result = n.toString(); // 4444
    // 0 ~ 3
    for (int i = 0; i < result.length - 1; i++) {
      if (result[i] != result[i + 1]) {
        result = 'No';
        break;
      }
    }
    return result;
  }
}