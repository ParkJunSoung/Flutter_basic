import 'dart:io';
void main() {
  String inputs = stdin.readLineSync();
  int input = int.parse(inputs);
  int c = 0;
  for (int i = 0; i < input + 1; i++) {
     c += i;
  }
  print(c);
}