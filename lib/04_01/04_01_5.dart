import 'dart:io';
// void main() {
//
//   // 1 5 15 27 28
//
//
//   List<String> inputNumberList = [];
//   for (int i = 0; i < 5; i++) {
//     inputNumberList.add(stdin.readLineSync());
//   }
//   Exam exam = Exam();
//   print(exam.solution(inputNumberList));
// }
//
// class Exam {
//   List<int> solution(List<String> x) {
//     List<int> resultList = [];
//     for (int i = 0; i < 4; i++) {
//       int result = int.parse(x[i + 1]) - int.parse(x[i]);
//       resultList.add(result);
//     }
//     return resultList;
//   }
// }
void main() {
  // 입력받을 리스트 변수 선언
  List<int> inputs = [];
  // 5번 수행
  for (int i = 0; i < 5; i++) {
    // 한 줄 입력 String
    String str = stdin.readLineSync();
    // 숫자로 변환
    int num = int.parse(str);
    // 숫자를 리스트에 추가
    inputs.add(num);
  }
  // 4번 출력
  for (int i = 0; i < 4; i++) {
    print(inputs[i + 1] - inputs[i]);
  }
}