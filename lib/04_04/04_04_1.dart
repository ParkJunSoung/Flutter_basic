import 'dart:io';
import 'dart:math';
void main() {
  List<String> list = stdin.readLineSync().split(' ');

  int m = int.parse(list[0]);
  int n = int.parse(list[1]);

  if(m.isOdd == n.isOdd && m.isEven == n.isEven) {
    print('NO');
  } else {
    print('YES');
  }

}