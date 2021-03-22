//main 메소드 또는 함수라고 부름
void main(){
  //잘못된 변수 이름
  int a = 10;
  int b = 20;
  //밑에 처럼 변수 이름을 명시 camel case (낙타형)
  int MyAge = 10; //이런식으로 변수이름은 의미를 두어야함
  int brotherAge = 20;
  //snake case (뱀형)
  int my_age = 10;
  int brother_age = 20;
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
  var ageList = [10,20,30];
  //문자열
  List<String> nameList = ['홍길동','한석봉','박준성'];
  var nameList =  ['홍길동','한석봉','박준성']; //var 쓰면 다트언어가 타입을 알음
  // null (값이 없다.)
  int g; //null
  int g = 0;//이건 0이라는 값이 존재 null 과는 전혀 다름
  g = 10; //null 이 아니다 10임 // 값이 아직 안들어간 변수

  String name3 = ''; // 아무것도없는 0개의 문자
  String name4; // 이건 null




}
