//주사위의 한쪽면과 반대쪽 숫자의 합은 반드시 7이 된다. (1, 6) (2, 5) (3, 4)
// 한쪽면이 n일 경우 반대쪽 숫자는?
void main() {
  Exam exam = Exam();
  print(exam.solution(3));
  print(exam.solution(5));
  print(exam.solution(1));
  print(exam.solution(3));
}

class Exam {
  int solution(int a) {
    int result = 0;
    if (a == 1) {
      return 6;
    }
    else if (a == 2) {
      return 5;
    } else if (a == 3) {
      return 4;
    } else if (a == 4) {
      return 3;
    } else if (a == 5) {
      return 2;
    }
  }
}
