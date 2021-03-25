import 'dart:io';

void main() {
  List<int> scores = [100, 50, 70, 30];
  print(scores.length); // 리스트의 갯수
  //맨 뒤에 40 추가
  scores.add(40); // 100, 50, 70, 30, 40
  // 40을 뺀다
  scores.remove(40); // 100, 50, 70, 30
  //3번째 인덱스의 값 삭제
  scores.removeAt(3); // 100, 50, 70
  //맨앞에것 삭제
  scores.removeAt(0); // 50, 70
  //0번째에 35추가
  scores.insert(0, 35); // 35, 50, 70
  //모두 삭제
  scores.clear(); // 모두삭제됨
  //뒤에다가 리스트 추가
  scores.addAll([10, 20, 30]); //10, 20, 30

  int sum = total(scores);
  double average = avg(scores);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
  ex5();
}

int total(List<int> scores) {
  int result = 0;
  //반복문
  for (int i = 0; i < scores.length; i ++) {
    result = result + scores[i];
  }
  return result;
}

double avg(List<int> scores) {
  return total(scores) / scores.length;
}

void ex5() {
  List<int> number = [3, 4, 9];
  print('1자리의 숫자를 입력 해 주세요');
  String text = stdin.readLineSync();
  int input = int.parse(text);
  /* for (int i = 0; i < number.length; i++) {
    if (input == number[i]) {
      print('정답');
      break;
    }*/
  //조건 ? 참 : //거짓
  print(number.contains(input) ? '정답' : '오답');
}

