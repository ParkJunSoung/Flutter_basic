import 'dart:io';

void main() {
  //입력 2 9 3 8
  List<String> inputs = (stdin.readLineSync().split(' '));
  //정렬 2 3 8 9
  List list = [];
  list.sort();

  for(int i = 0; i < 4; i++){
    list.add(int.parse(inputs[i]));
  }
  print(list[2] * 10 + list[1] + list[3] * 10 + list[0]);
}
