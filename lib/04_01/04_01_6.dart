import 'dart:io';

void main() {
  List<int> inputNumber = [];
  for (int i = 0; i < 4; i++) {
    inputNumber.add(int.parse(stdin.readLineSync()));
  }
  for (int i = 0; i < 4; i++) {
    print(inputNumber[i + 1] - inputNumber[i]);
  }

}
