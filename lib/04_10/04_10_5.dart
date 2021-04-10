import 'dart:io';
void main() {
  List<int> input = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  if(input[0] > input[1]) {
    print('>');
  } else if(input[0] < input[1]){
    print('<');
  } else if (input[0] == input[1]){
  print('==');  }



}