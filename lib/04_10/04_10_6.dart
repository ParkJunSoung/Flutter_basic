import 'dart:io';
void main() {
  List<int> inputs = [];
  for (int i = 0; i < 3; i++) {
    inputs.add(int.parse(stdin.readLineSync()));
  }
  int sum = inputs[0] * inputs[1] * inputs[2];
  String sum2 = sum.toString();
  int d = 0;
  for(int i =0; i < sum2.length; i++) {
    if (sum2.length == 0) {
      d ++;
    } else if (sum2.length == 1) {
      d ++;
    } else if (sum2.length == 2) {
      d ++;
    } else if (sum2.length == 3) {
      d ++;
    } else if (sum2.length == 4) {
      d ++;
    } else if (sum2.length == 5) {
      d ++;
    } else if (sum2.length == 6) {
      d ++;
    } else if (sum2.length == 7) {
      d ++;
    } else if (sum2.length == 8) {
      d ++;
    } else if (sum2.length == 9) {
      d ++;
    }
  }
  print(d);



}