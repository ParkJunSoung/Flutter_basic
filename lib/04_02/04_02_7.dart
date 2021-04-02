import 'dart:io';
void main() {
  //입력
  List<String> inputLine = stdin.readLineSync().split(' ');
  //결과물 받을 리스크 상자 생성
  List<int> inputs = [];
  //네번 반복하며 숫자를 받음
  for(int i = 0; i < 4; i++){
    inputs.add(int.parse(inputLine[i]));
  }
  //인풋즈에 들어오는 숫자를 정렬 함 오름차순으로
  inputs.sort();
  //인풋즈에 숫자가 들어왔음  2 3 5 6 들어왔다고 치면 소트에서 정렬이됨
  // 2 3 5 6 으로 정렬이 되니까 인덱스 3번 과 4번이 제일큰 숫자에 해당
  print(inputs[3] * 10 + inputs[1] + inputs[2] *10 + inputs[0]);
}
