import 'dart:io';

void main() {
  List<int> inpus = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  int a = inpus[0];
  int b = inpus[1];

  print((a * b) / 2 );

}
