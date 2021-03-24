void main() {
  List<int> scores = [100, 50, 70, 30, 80];
  print(scores.length); // 리스트의 갯수

  int sum = total(scores);
  double average = avg(scores);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(List<int> scores) {
  int result = 0;
  for (int i =0; i < scores.length; i ++){
    result = result + scores[i];
  }
  return result;
}

double avg(List<int> scores) {
  return total(scores) / scores.length;
}
