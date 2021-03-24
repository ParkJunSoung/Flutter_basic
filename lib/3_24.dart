void main() {
  List<int> socres = [100, 50, 70, 30];

  int sum = total(socres[0], socres[1], socres[2], socres[3]);
  double average = avg(socres[0], socres[1], socres[2], socres[3]);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
}

int total(int korean, int math, int english, int science) {
  return korean + math + english + science;
}

double avg(int korean, int math, int english, int science) {
  return (korean + math + english + science) / 4;
}
