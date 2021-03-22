import 'dart:math'; //import 문  수학사용문

//main 메소드 또는 함수라고 부름
void main(){
  //잘못된 변수 이름
  int a = 10;
  int b = 20;
  //밑에 처럼 변수 이름을 명시 camel case (낙타형)
  // int MyAge = 10; //이런식으로 변수이름은 의미를 두어야함
  int brotherAge = 20;
  //snake case (뱀형)
  // int my_age = 10;
  // int brother_age = 20;
  //[숫자형]
  // int b = 5.5; ctrl+/ 전체 주석처리
    double c = 10.5; //실수(소수점)
  // [문자열]
  String name = '홍길동';
  // [진위여부(참,거짓)]
  bool isMarried = true; //결혼했다.
  isMarried = false; //결혼 안했다.
  //숫자목록
  List<int> ageList = [10,20,30];
  // var ageList = [10,20,30];
  //문자열
  List<String> nameList = ['홍길동','한석봉','박준성'];
  // var nameList =  ['홍길동','한석봉','박준성']; //var 쓰면 다트언어가 타입을 알음
  // null (값이 없다.)
  //int g; //null
  int g = 0;//이건 0이라는 값이 존재 null 과는 전혀 다름
  g = 10; //null 이 아니다 10임 // 값이 아직 안들어간 변수

  String name3 = ''; // 아무것도없는 0개의 문자
  String name4; // 이건 null
  //팩스문제
  final double tax = 1.1; //세금 final 을 넣으면 변수가 수정이 안됨 (상수)=변하지않는값
  int fax = 5; //팩스 가격
  print('5만원짜리를 4만원으로 할인합니다.');
  fax = 4;//tax = 4; 팩스가격을 수정해야되는데 , 세금변수를 건드림.
  print('팩스의 새로운 가격은(세금포함) ${fax * tax} 만원!'); // 잘못된예시 20만원, 수정하면 4.4만원
  exam1();//exam1함수를 실행
  exam2();//exam2함수를 실행
  exam3();
}
//exam1 함수를 만들었다.
void exam1(){
  //연습문제 1-1
  //화면에 다음과 같은 결과를 표시하는 소스 코드를 작성 해 주세요.
  // 소스 코드 안에 3을 변수 a 에, 5 를 변수 b 에 대입합니다.
  // 그 곱셈의 결과를 변수 result 에 대입합니다.
  // 변수 c 를 다음과 같이 화면에 출력합니다.
  int aa = 3;
  int bb = 5;
  int cc = aa * bb;
  print(cc);
}
void exam2(){
  //연습문제 1-2
  //아래에 표시된 4개의 값을 담기 위한 적절한 타입(형) 을 생각 해, 선언과 동시에 “초기화” 하는 소스 코드를 작성합니다. (출력하지 않아도 됨)
  // 또한, 변수명은 자유롭게 생각해도 되지만, 암묵적인 룰을 지켜 주세요.
  // 2개 이상의 타입(형)이 생각될 경우에는, 어느 것을 사용해도 괜찮습니다.
  // true
  // 3.14
  // 314159265853979
  // “항구를 공격! 적에게 15포인트의 데미지를 주었다"
  bool test = true;
  double test2 = 3.14;
  int test3 = 314159265853979;
  String test4 = ('"항구를 공격! 적에게 15포인트의 데미지를\n 주었다"');
  print(test4);
  print(pi); //dart math 패키지 사용
}
void exam3(){
  var names = ['한석봉','심사임당','이순신',];
  //반복문 for문 : 목록이 있으면
  for (var name in names){

  print ('내 이름은 $name입니다');
  //1~12까지 출력
  //++ : 1증가
  for (int month = 1; month <= 12; month++) {
    print(month);
  }
  //100번 실행
  for (int i = 0; i < 100; i++){
    print('내 이름은 박준성');
  }
  //조건문
  // == 같은지비교
  // >,<,>=,<=
  int a = 2;
  if(a > 10){
    print('5보다 크다');
  } else if (a > 3){
    print('5보다 크다');
  } else {
    print('3보다 작다');
  }
  }
}