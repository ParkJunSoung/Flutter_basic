import 'dart:io';
void main() {
  List<int> st = [1, 2, 3, 4, 5];
  for(int i = 0; i < 4; i++)  {
    st.remove(int.parse(stdin.readLineSync()));
  }print(st[0]);
}