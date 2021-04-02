
import 'dart:io';
import 'dart:math';
void main() {
  //인풋스 리스트에 1~5까지 숫자를 담음
  List<int> inputs = [1, 2, 3, 4, 5];
  // 입력을 4개 받아야하니 4번반복하는 입력문
  for(int i =0; i < 4; i++){
    //인풋스 리무브 (입력받은 값을 인풋스에있으면 지움)
    inputs.remove(int.parse(stdin.readLineSync()));
  }
  // 4개 숫자입력하고, 리무브로 하나씩 대입해서 지우니 마지막 숫자하나남음
  //그숫자가 1개므로 인덱스 0 번째에 들어가있음
  print(inputs[0]);
}




// import 'dart:io';
// void main() {
//   // 입력이 한 줄로 들어올 때
//   // 1 2 3 4 5
//   List<String> oneLine = stdin.readLineSync().split(' ');
//   // 1 2 3 4 5
//   List<int> oneLine2 = stdin.readLineSync().split(' ').map((e) => int.parse(e));
//   // 여러줄로 입력할 때
//   /// 1
//   /// 2
//   /// 3
//   /// 4
//   /// 5
//   List<String> inputs = [];
//   for (int i = 0; i < 5; i++) {
//     inputs.add(stdin.readLineSync());
//   }
//   // 출력
//   /// 1
//   /// 2
//   /// 3
//   /// 4
//   /// 5
//   for (var input in inputs) {
//     print(input);
//   }
//   // 1 2 3 4 5
//   String result = '';
//   for (var input in inputs) {
//     result += '$input ';
//   }
//   print(result);
// }