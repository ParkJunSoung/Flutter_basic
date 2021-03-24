void main() {
  int kor = 100;
  int math = 50;
  int english = 70;
  int science = 30;

  int sum = total(kor, math, english);
  double average = avg(kor, math, english);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

void total(int korean, int math, int english, int science) {
  return korean + math + english + science;
}

double avg(int korean, int math, int english, int science) {
  return (korean + math + english + science) / 4;
}