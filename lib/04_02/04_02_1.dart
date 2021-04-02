import 'dart:io';
import 'dart:math';
void main() {
  List<String> inputs = stdin.readLineSync().split(' ');
  int M = int.parse(inputs[0]);
  int N = int.parse(inputs[1]);
  if (M.isOdd == N.isOdd && M.isEven == N.isEven) {
    print('NO');
  } else
    return print('YES');
}