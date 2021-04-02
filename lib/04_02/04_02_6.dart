import 'dart:io';
void main() {
  //숫자를 받는 리스트 스피릿에 공백이없음으로 하나씩 다 인식함
  List<String> oneLine = stdin.readLineSync().split('');
  //입력받은 글자수를 비교
  if(oneLine.length <= 11) {
    //11보다 작으면 부족한갯수를 표시
    print(11 - oneLine.length  );
  }else if(oneLine.length > 11 ) {
    //11이상이면 ok표시
    print('OK');
  }

}