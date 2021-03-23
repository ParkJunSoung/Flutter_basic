import 'dart:io';
import 'dart:math';
//메인함수
void main() {
  var weight = 60;
  var age1 = 10;
  var age2 = 20;
  var age = age1 + age2;
  var name = '스마트';
  //변수 weight 의 값이 60과 같다
  if (weight == 60) {
  }
  //변수 age1 과 age2 의 합계를 2배 한 것이 60을 넘는다
  // 괄호를 나눠야됨 넘는다 > 표시 수정오류
  if ((age1 + age2) * 2 > weight) {
  }
  //변수 age 가 홀수다
  if (age.isOdd) {
  }
  //변수 name 에 저장된 문자열이 “스마트"와 같다
  if (name == '스마트') {
  }
  print('주사위 : ${dice(100)}');
  //ex3();
  //ex4();
}
// void ex2(){
//   var cost = 300;
//   if(cost = 300 * 1.05){
//   }//안됨
//   if(3){
//   }//안됨
//   var age = 1;
//   if(age != 30){
//   }//됨
//   if(true){
//   }//됨
//   var b = 1;
//   if(b + 5 < 20){
//   }//됨
//   if(gender = true){
//   }//안됨
// }
void ex3(){
  //int형 변수 gender 를 선언하고, 0 또는 1을 대입한다 (어떤 것이라도 상관없음)
  var gender = 0;
  //또한, int 형 변수 age 를 선언하고, 적당한 숫자를 대입한다.
  var age = 1;
  //화면에 “안녕하세요” 를 표시한다
    print('"안녕하세요"');
  //만약 변수 gender 가 0이면 “나는 남자입니다"
  if(gender == 0){
    print('"나는 남자입니다."');
    //, 그렇지 않으면 “나는 여자입니다" 를 표시한다
  } else if(gender == 1){
    print('"나는 여자입니다"');
    //만약 변수 gender 가 남자이면 age 변수의 값을 표시하고, 뒤에 “살입니다" 를 붙여서 표시한다.
  }if(gender == 0){
    print('"$age 살입니다"');
  }
    //마지막에 “잘 부탁합니다" 를 표시한다
    print('"잘 부탁합니다."');
}
void ex4(){
    //화면에 “[메뉴] 1:검색 2:등록 3:삭제 4:변경 >” 을 표시한다
    print('[메뉴] 1:검색 2:등록 3:삭제 4:변경');
    //키보드로 숫자를 입력하고, 변수 selected 에 대입한다.
    var selected = stdin.readLineSync();
    //만약 변수 selected 가 1 이면 “검색합니다"
    //selected 가 1 부터 4 사이의 값이 아니라면 아무것도 하지 않는다
    if(selected == '1'){
    print('"검색합니다"');
    //2이면 “등록합니다"
  } else if(selected == '2'){
    print('"등록합니다"');
    //3이면 “삭제합니다"
  } else if(selected == '3'){
    print('"삭제합니다"');
    //4이면 “변경합니다"
  } else if(selected == '4'){
    print('"변경합니다"');
  }

}
//void  실행되고 끝남 값이없음.
//입력   (출력)
int dice(int num) {
  Random random = Random();
  //print(random.nextInt(6) + 1);// 1 ~ 6
  return random.nextInt(num) + 1;
  //f(x) = x +2 = 4
  //x=2  정수 num  하나를 받아서 정수(1 부터 num 까지)를 반환한다 (리턴)
}
