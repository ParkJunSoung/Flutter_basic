import 'dart:io';
void main() {
  var weight = 60;
  var age1 = 10;
  var age2 = 20;
  var age = age1 + age2;
  var name = '스마트';
  if (weight == 60) {
  }
  if (age1 + age2 * 2 <= weight) {
  }
  if (age.isOdd) {
  }
  if (name == '스마트') {
  }

  ex3();
  ex4();
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
  var gender = 0;
  var age = 1;
  print('"안녕하세요"');
  if(gender == 0){
    print('"나는 남자입니다."');
  } else if(gender == 1){
    print('"나는 여자입니다"');
  }if(gender == 0){
    print('"$age 살입니다"');
  }
    print('"잘 부탁합니다."');
}
void ex4(){
    print('[메뉴] 1:검색 2:등록 3:삭제 4:변경');
    var selected = stdin.readLineSync();
    if(selected == '1'){
    print('"검색합니다"');
  } else if(selected == '2'){
    print('"등록합니다"');
  } else if(selected == '3'){
    print('"삭제합니다"');
  } else if(selected == '4'){
    print('"변경합니다"');
  }

}