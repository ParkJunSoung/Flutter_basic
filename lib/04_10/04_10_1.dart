import 'dart:io';
void main() {
  String inputs = stdin.readLineSync();
  int input = int.parse(inputs);
  for(int i = input; i > 0; i--){
  print('$i');
  }
}