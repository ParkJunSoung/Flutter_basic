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
