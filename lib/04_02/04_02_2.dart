void main() {
  Exam exam = Exam();
  print(exam.solution(3, 3));
 
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