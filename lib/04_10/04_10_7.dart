import 'dart:io';


void main() {
 String inputs = stdin.readLineSync();
 List<int> inputs2 = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();

  var a = inputs2[0];
  var b = inputs2[1];
  //                      2 ~ 7 = 5  2번째부터 5번째까지
 //                         시작    끝
 //
  print(inputs.substring(a - 1,a - 1 + b));



}


