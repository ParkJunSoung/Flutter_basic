import 'dart:io';
import 'dart:math';
void main() {
  List<int> a = stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  int b = a[0];
  int c = a[1];
  int d = a[2];
  print((b+c) % d);
}